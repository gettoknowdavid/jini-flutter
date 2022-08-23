import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class GeoConverter implements JsonConverter<GeoPoint, GeoPoint> {
  const GeoConverter();

  @override
  GeoPoint fromJson(GeoPoint json) => GeoPoint(json.latitude, json.longitude);

  @override
  GeoPoint toJson(GeoPoint geo) => geo;
}
