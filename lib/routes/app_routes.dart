import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_talks/views/screens/users/login_screen.dart';
import 'package:restaurant_talks/views/screens/users/signup_screen.dart';
import '../views/screens/items/item_index_screen.dart';

// GoRouter configuration
final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
      routes: [
        GoRoute(
          path: 'signup',
          builder: (context, state) => const SignupScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/items',
      builder: (context, state) => ItemIndexScreen(),
      routes: const [
        // You can continue adding nested routes here, for example:
        // GoRoute(
        //   path: 'details',
        //   builder: (context, state) => const ItemDetailsScreen(),
        // ),
      ],
    ),
  ],
);