import 'package:fpdart/fpdart.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fokusin/core/error/failures.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, User>> loginWithGoogle();

  Future<Either<Failure, User>> currentUserSession();

  Future<Either<Failure, void>> signOut();
}
