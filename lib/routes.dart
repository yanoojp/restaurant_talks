import 'package:go_router/go_router.dart';
import 'package:restaurant_talks/views/screens/guest_numbers/guest_number_screen.dart';
import 'package:restaurant_talks/views/screens/items/item_form_screen.dart';
import 'package:restaurant_talks/views/screens/items/item_index_screen.dart';
import 'package:restaurant_talks/views/screens/users/login_screen.dart';
import 'package:restaurant_talks/views/screens/users/sign_up_screen.dart';
import 'package:restaurant_talks/views/screens/users/user_info_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/sign_up',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const ItemIndexScreen(),
      routes: [
        GoRoute(
          path: 'form',
          builder: (context, state) => const ItemFormScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/user_info',
      builder: (context, state) => const UserInfoScreen(),
    ),
    GoRoute(
      path: '/guest_number',
      builder: (context, state) => const GuestNumberScreen(),
    ),
  ],
);
