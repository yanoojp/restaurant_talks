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
        title: Text(emailVerificationScreen),
        backgroundColor: darkBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // On the email verification screen, provide clear instructions. Let the user know that they might need to check their spam folder or that email delivery might take a few minutes.
              pleaseVerifYourEmailMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: normalFontSize, height: 1.5),
            ),
            const SizedBox(height: 80.0),
            Button(
              text: resendVerificationEmailButton,
              func: () async {
                await ref
                    .read(emailVerificationStateManager.notifier)
                    .resendVerificationEmail();
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(verificationEmailSentAgainMessage)));
              },
              backgroundColor: darkBlue,
              textColor: whiteColor,
              width: MediaQuery.of(context).size.width * 0.8,
              // enabled: !emailVerificationState.isLoading,
            ),
            const SizedBox(height: 20.0),
            Button(
              text: confirmVarifiedButton,
              func: () async {
                bool isVerified = await ref
                    .read(emailVerificationStateManager.notifier)
                    .checkEmailVerified();
                if (!isVerified) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(notVerifiedMessage)));
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
