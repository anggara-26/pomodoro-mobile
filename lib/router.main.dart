part of 'router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
      name: 'onboarding',
      path: '/onboarding',
      builder: (context, state) => const OnBoarding(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => const Login(),
    )
  ],
);
