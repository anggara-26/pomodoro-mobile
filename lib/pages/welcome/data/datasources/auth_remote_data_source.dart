import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fokusin/core/utils/api_service.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:fokusin/core/error/exceptions.dart';

abstract interface class AuthRemoteDataSource {
  Future<User> loginWithGoogle();
  Future<User> getCurrentUserSession();
  Future<void> signOut();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;
  final FirebaseAuth firebaseAuthInstance;
  AuthRemoteDataSourceImpl(
    this.firebaseAuthInstance,
    this.dio,
  );

  @override
  Future<User> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final UserCredential signInResponse =
          await firebaseAuthInstance.signInWithCredential(credential);

      final User? user = signInResponse.user;

      if (user == null) {
        throw const ServerException('User is null!',
            code: 401, messageCode: 'user-is-null');
      }

      if (user.email == null) {
        throw const ServerException('User email is null!',
            code: 401, messageCode: 'user-email-is-null');
      }

      final result = await APIService.instance.request(
        '/api/v1/users',
        DioMethod.post,
        param: {
          'email': user.email,
          'firebase_uid': user.uid,
          'name': user.displayName,
        },
      );

      print('result: $result');

      return user;
    } on ServerException catch (e) {
      throw ServerException(e.message,
          code: e.code, messageCode: e.messageCode);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<User> getCurrentUserSession() async {
    try {
      final user = firebaseAuthInstance.currentUser;

      if (user == null) {
        throw const ServerException('User is null!',
            code: 401, messageCode: 'user-is-null');
      }

      return user;
    } on ServerException catch (_) {
      rethrow;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await firebaseAuthInstance.signOut();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
