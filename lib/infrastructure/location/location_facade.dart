import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/location/i_location_facade.dart';
import 'package:jini/domain/location/location_failure.dart';
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart' as gc;

@LazySingleton(as: ILocationFacade)
class LocationFacade implements ILocationFacade {
  final Location _location;

  LocationFacade(this._location);

  @override
  Future<Either<LocationFailure, String?>> getCityCountry(
      [GeoPoint? geo]) async {
    if (geo == null) {
      PermissionStatus status = await _location.hasPermission();
      switch (status) {
        case PermissionStatus.granted:
          LocationData _data = await _location.getLocation();

          List<gc.Placemark> _placemarks = await gc.placemarkFromCoordinates(
            _data.latitude!,
            _data.longitude!,
          );

          String? _city = _placemarks[0].locality;
          String? _countryCode = _placemarks[0].isoCountryCode;

          if (_city != null && _countryCode != null) {
            String _place = _city + ", " + _countryCode;
            return right(_place);
          } else {
            return left(LocationFailure.unknownLocation());
          }
        default:
          return left(LocationFailure.permissionDenied());
      }
    } else {
      List<gc.Placemark> _placemarks = await gc.placemarkFromCoordinates(
        geo.latitude,
        geo.longitude,
      );

      String? _city = _placemarks[0].locality;
      String? _countryCode = _placemarks[0].isoCountryCode;

      if (_city != null && _countryCode != null) {
        String _place = _city + ", " + _countryCode;
        return right(_place);
      } else {
        return left(LocationFailure.unknownLocation());
      }
    }
  }

  @override
  Future<Either<LocationFailure, GeoPoint?>> getLocation() async {
    return await _location.requestPermission().then(
      (permission) async {
        switch (permission) {
          case PermissionStatus.granted:
          case PermissionStatus.grantedLimited:
            LocationData _data = await _location.getLocation();
            GeoPoint? _geo = GeoPoint(_data.latitude!, _data.longitude!);
            return right(_geo);
          default:
            return left(LocationFailure.permissionDenied());
        }
      },
    );
  }

  @override
  Future<Either<LocationFailure, Unit>> requestPermission() async {
    return await _location.requestPermission().then(
      (PermissionStatus status) async {
        switch (status) {
          case PermissionStatus.granted:
          case PermissionStatus.grantedLimited:
            return right(unit);
          default:
            return left(LocationFailure.permissionDenied());
        }
      },
    );
  }
}
