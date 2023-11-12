import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/views/screens/guest_number/guest_number_screen.dart';
import 'package:restaurant_talks/views/screens/items/item_form_screen.dart';
import 'package:restaurant_talks/views/screens/items/item_index_screen.dart';
import 'package:restaurant_talks/views/screens/users/email_verification_screen.dart';
import 'package:restaurant_talks/views/screens/users/login_screen.dart';
import 'package:restaurant_talks/views/screens/users/profile_screen.dart';
import 'package:restaurant_talks/views/screens/users/signup_screen.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: loginScreenPath,
      pageBuilder: (context, state) => const MaterialPage(child: LoginScreen()),
    ),
    GoRoute(
      path: signupScreenPath,
      pageBuilder: (context, state) =>
          const MaterialPage(child: SignupScreen()),
      routes: [
        GoRoute(
          path: 'email_varification',
          pageBuilder: (context, state) {
            return const MaterialPage(child: EmailVerificationScreen());
          },
        ),
      ],
    ),
    GoRoute(
      path: itemIndexScreenPath,
      pageBuilder: (context, state) =>
          const MaterialPage(child: ItemIndexScreen()),
      routes: [
        GoRoute(
          path: 'form',
          pageBuilder: (context, state) {
            return MaterialPage(child: ItemFormScreen(id: null));
          },
        ),
        GoRoute(
          path: 'form/:id',
          pageBuilder: (context, state) {
            final id = state.pathParameters['id'];
            return MaterialPage(child: ItemFormScreen(id: id!));
          },
        ),
      ],
    ),
    GoRoute(
      path: profileScreenPath,
      pageBuilder: (context, state) =>
          const MaterialPage(child: ProfileScreen()),
    ),
    GoRoute(
      path: guestNumberScreenPath,
      pageBuilder: (context, state) =>
          const MaterialPage(child: GuestNumberScreen()),
    ),
  ],
);
