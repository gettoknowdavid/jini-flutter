import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  const ServerException({this.message});
  final String? message;

  @override
  List<Object?> get props => [message];
}

class CacheException extends Equatable implements Exception {
  const CacheException({this.message});
  final String? message;

  @override
  List<Object?> get props => [message];
}
