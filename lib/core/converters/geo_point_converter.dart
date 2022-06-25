import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class GeoPointConverter
    implements JsonConverter<GeoPoint, Map<String, dynamic>> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(Map<String, dynamic> json) => GeoPoint(
        (json['latitude'] as  num).toDouble(),
        (json['longitude'] as  num).toDouble(),
      );

  @override
  Map<String, dynamic> toJson(GeoPoint data) => {
        'latitude': data.latitude,
        'longitude': data.longitude,
      };
}
