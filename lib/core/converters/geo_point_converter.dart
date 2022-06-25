import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class GeoPointConverter
    implements JsonConverter<GeoPoint, Map<String, dynamic>> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(Map<String, dynamic> json) => GeoPoint(
        json['latitude'],
        json['longitude'],
      );

  @override
  Map<String, dynamic> toJson(GeoPoint data) => {
        'latitude': data.latitude,
        'longitude': data.longitude,
      };
}
