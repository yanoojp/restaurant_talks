import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/variables.dart';
import '../../../view_model/users/login_view_model.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginStateManager);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              appTitle,
              ),
            ),
            TextField(
              controller: loginState.emailController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextField(
              controller: loginState.passwordController,
              decoration: const InputDecoration(hintText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                // Call login function in LoginStateManager
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
