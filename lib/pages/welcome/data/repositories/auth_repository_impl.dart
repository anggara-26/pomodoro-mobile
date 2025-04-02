import 'package:fpdart/fpdart.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fokusin/core/error/exceptions.dart';
import 'package:fokusin/core/error/failures.dart';
import 'package:fokusin/pages/welcome/data/datasources/auth_remote_data_source.dart';
import 'package:fokusin/pages/welcome/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  const AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, User>> loginWithGoogle() async {
    try {
      final user = await remoteDataSource.loginWithGoogle();
      return right(user);
    } on ServerException catch (e) {
      return left(Failure(e));
    } catch (e) {
      return left(Failure(ServerException(e.toString())));
    }
  }

  @override
  Future<Either<Failure, User>> currentUserSession() async {
    try {
      final user = await remoteDataSource.getCurrentUserSession();
      return right(user);
    } on ServerException catch (e) {
      return left(Failure(e));
    } catch (e) {
      return left(Failure(ServerException(e.toString())));
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      await remoteDataSource.signOut();
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(e));
    } catch (e) {
      return left(Failure(ServerException(e.toString())));
    }
  }
}
