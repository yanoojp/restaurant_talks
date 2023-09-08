import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/views/screens/guest_number/guest_number_screen.dart';
import 'package:restaurant_talks/views/screens/items/item_form_screen.dart';
import 'package:restaurant_talks/views/screens/users/login_screen.dart';
import 'package:restaurant_talks/views/screens/users/profile_screen.dart';
import 'package:restaurant_talks/views/screens/users/signup_screen.dart';
import '../views/screens/items/item_index_screen.dart';

// GoRouter configuration
final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: loginScreenPath,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: signupScreenPath,
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(
      path: itemIndexScreenPath,
      builder: (context, state) => const ItemIndexScreen(),
      routes: [
        GoRoute(
          path: itemFormScreenPath,
          builder: (context, state) => const SignupScreen(),
        ),
        GoRoute(
          path: '$itemEditScreenPath/:id',
          pageBuilder: (context, state) {
            final id = state.pathParameters['id'];
            return MaterialPage(child: ItemEditScreen(id: id!));
          },
        ),
        // You can continue adding nested routes here, for example:
        // GoRoute(
        //   path: 'details',
        //   builder: (context, state) => const ItemDetailsScreen(),
        // ),
      ],
    ),
    GoRoute(
      path: profileScreenPath,
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: guestNumberScreenPath,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const GuestNumberScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const Offset begin = Offset(1.0, 0.0);
            const Offset end = Offset.zero;
            var tween = Tween(begin: begin, end: end);
            var slideAnimation = animation.drive(tween);
            return SlideTransition(position: slideAnimation, child: child);
          },
        );
      },
    ),
  ],
);
