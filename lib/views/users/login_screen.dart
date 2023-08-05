import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view_model/users/login_view_model.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginStateManager);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
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
