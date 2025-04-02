import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_user_state.dart';

class AppUserCubit extends Cubit<AppUserState> {
  AppUserCubit() : super(AppUserInitial());

  void login(User user) {
    emit(AppUserLoggedIn(user));
  }

  void updateUser(User? user) {
    if (user == null) {
      emit(AppUserInitial());
    } else if (!user.emailVerified) {
      emit(AppUserUnverified(user));
    } else {
      emit(AppUserLoggedIn(user));
    }
  }

  void logout() {
    emit(AppUserInitial());
  }
}
