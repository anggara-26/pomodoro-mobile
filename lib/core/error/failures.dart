import 'package:fokusin/core/error/exceptions.dart';

class Failure {
  final ServerException error;

  Failure(this.error);

  @override
  String toString() => error.message;
}
