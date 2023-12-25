import 'package:go_router/go_router.dart';
import 'package:restauratn_talks/views/screens/login_screen.dart';
import 'package:restauratn_talks/views/screens/sign_up_screen.dart';

final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/sign_up',
        builder: (context, state) => const SignUpScreen(),
      ),
    ],
  );