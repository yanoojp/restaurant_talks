import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/view_model/users/email_verification_view_model.dart';
import 'package:restaurant_talks/views/widgets/base/button.dart';

class EmailVerificationScreen extends ConsumerWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailVerificationState = ref.watch(emailVerificationStateManager);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Email Verification"),
        backgroundColor: darkBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Please verify your email to proceed. We've sent you a verification link. Check your email and click on the link provided.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: normalFontSize),
            ),
            const SizedBox(height: 20.0),
            Button(
              text: "Resend Verification Email",
              func: () async {
                await ref
                    .read(emailVerificationStateManager.notifier)
                    .resendVerificationEmail();
              },
              backgroundColor: darkBlue,
              textColor: whiteColor,
            ),
            const SizedBox(height: 20.0),
            Button(
              text: "I've Verified. Continue!",
              func: () async {
                await ref
                    .read(emailVerificationStateManager.notifier)
                    .checkEmailVerified();
              },
              backgroundColor: darkBlue,
              textColor: whiteColor,
            ),
            if (emailVerificationState.isLoading) ...[
              const SizedBox(height: 20.0),
              const Center(child: CircularProgressIndicator()),
            ]
          ],
        ),
      ),
    );
  }
}
