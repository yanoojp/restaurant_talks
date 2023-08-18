import 'package:go_router/go_router.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/views/screens/users/login_screen.dart';
import 'package:restaurant_talks/views/screens/users/signup_screen.dart';
import '../views/screens/items/item_index_screen.dart';

// GoRouter configuration
final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: loginScreenPath,
      builder: (context, state) => const LoginScreen(),
      routes: [
        GoRoute(
          path: signupScreenPath,
          builder: (context, state) => const SignupScreen(),
        ),
      ],
    ),
    GoRoute(
      path: itemIndexScreenPath,
      builder: (context, state) => ItemIndexScreen(),
      routes: [
        GoRoute(
          path: itemFormScreenPath,
          builder: (context, state) => const SignupScreen(),
        ),
        // You can continue adding nested routes here, for example:
        // GoRoute(
        //   path: 'details',
        //   builder: (context, state) => const ItemDetailsScreen(),
        // ),
      ],
    ),
  ],
);