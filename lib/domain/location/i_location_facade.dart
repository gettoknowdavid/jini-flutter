import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:jini/domain/location/location_failure.dart';

abstract class ILocationFacade {
  Future<Either<LocationFailure, Unit>> requestPermission();
  Future<Either<LocationFailure, GeoPoint?>> getLocation();
  Future<Either<LocationFailure, String?>> getCityCountry([GeoPoint? geo]);
}
