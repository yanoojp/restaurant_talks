import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name of Representative',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name of Restaurant',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              child: const Text('Sign Up'),
              onPressed: () {
                // Handle signup logic here
              },
            ),
            const SizedBox(height: 12),
            TextButton(
              child: const Text(
                'Already have an account? Login',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              onPressed: () {
                context.go('/'); // Navigate to the login screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
