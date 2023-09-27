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
          children: [
            const Text(
              "Please verify your email to proceed.\nWe've sent you a verification link.\nCheck your email and click on the link provided.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: normalFontSize, height: 1.5),
            ),
            const SizedBox(height: 80.0),
            Button(
              text: "Resend Verification Email",
              func: () async {
                await ref
                    .read(emailVerificationStateManager.notifier)
                    .resendVerificationEmail();
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                        "Verification email sent again! Please check your inbox.")));
              },
              backgroundColor: darkBlue,
              textColor: whiteColor,
              width: MediaQuery.of(context).size.width * 0.8,
              // enabled: !emailVerificationState.isLoading,
            ),
            const SizedBox(height: 20.0),
            Button(
              text: "I've Verified. Continue!",
              func: () async {
                bool isVerified = await ref
                    .read(emailVerificationStateManager.notifier)
                    .checkEmailVerified();
                if (!isVerified) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                          "You haven't verified your email yet. Please check your inbox and click the verification link.")));
                }
              },
              backgroundColor: darkBlue,
              textColor: whiteColor,
              width: MediaQuery.of(context).size.width * 0.8,
              // enabled: !emailVerificationState.isLoading,
            ),
            if (emailVerificationState.isLoading) ...[
              const SizedBox(height: 20.0),
              const Center(
                  child: CircularProgressIndicator(
                color: darkBlue,
              )),
            ]
          ],
        ),
      ),
    );
  }
}
