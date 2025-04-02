class ServerException implements Exception {
  final String message;
  final String? messageCode;
  final int? code;
  const ServerException(this.message, {this.code, this.messageCode});
}
