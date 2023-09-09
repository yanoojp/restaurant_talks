import 'package:go_router/go_router.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/views/screens/guest_number/guest_number_screen.dart';
import 'package:restaurant_talks/views/screens/items/item_form_screen.dart';
import 'package:restaurant_talks/views/screens/items/item_index_screen.dart';
import 'package:restaurant_talks/views/screens/users/login_screen.dart';
import 'package:restaurant_talks/views/screens/users/profile_screen.dart';
import 'package:restaurant_talks/views/screens/users/signup_screen.dart';

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
          path: '$itemEditScreenPath/:id',
          builder: (context, state) {
            final id = state.pathParameters['id'];
            return ItemFormScreen(id: id!);
          },
        ),
      ],
    ),
    GoRoute(
      path: profileScreenPath,
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: guestNumberScreenPath,
      builder: (context, state) => const GuestNumberScreen(),
    ),
  ],
);
