part of 'app_user_cubit.dart';

@immutable
sealed class AppUserState {}

final class AppUserInitial extends AppUserState {}

final class AppUserUnverified extends AppUserState {
  final User user;
  AppUserUnverified(this.user);
}

final class AppUserLoggedIn extends AppUserState {
  final User user;
  AppUserLoggedIn(this.user);
}
