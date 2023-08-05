import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view_model/users/signup_view_model.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupState = ref.watch(signupStateManager);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: signupState.emailController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextField(
              controller: signupState.passwordController,
              decoration: const InputDecoration(hintText: 'Password'),
              obscureText: true,
            ),
            TextField(
              controller: signupState.managerNameController,
              decoration: const InputDecoration(hintText: 'Manager Name'),
            ),
            TextField(
              controller: signupState.restaurantNameController,
              decoration: const InputDecoration(hintText: 'Restaurant Name'),
            ),
            TextField(
              controller: signupState.prefectureController,
              decoration: const InputDecoration(hintText: 'Prefecture'),
            ),
            ElevatedButton(
              onPressed: () {
                // Call signup function in SignupStateManager
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
