import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/view_model/users/profile_view_model.dart';
import 'package:restaurant_talks/views/widgets/base/button.dart';
import 'package:restaurant_talks/views/widgets/base/button_with_underline.dart';
import 'package:restaurant_talks/views/widgets/custom_app_bar.dart';
import 'package:restaurant_talks/views/widgets/custom_bottom_nav_bar.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileStateManager);

    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: const CustomBottomNavBar(
        currentIndex: profileScreenIndex,
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(editProfileScreen),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const Text(emailHintText),
                  TextField(
                    controller: profileState.emailController,
                  ),
                  const SizedBox(height: 30),
                  const Text(passwordHintText),
                  TextField(
                    controller: profileState.passwordController,
                  ),
                  const SizedBox(height: 30),
                  const Text(managerNameHintText),
                  TextField(
                    controller: profileState.managerNameController,
                  ),
                  const SizedBox(height: 30),
                  const Text(restaurantNameHintText),
                  TextField(
                    controller: profileState.restaurantNameController,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
              const SizedBox(height: 30),
              Button(
                text: saveButton,
                func: () {
                  ref.read(profileStateManager.notifier).updateUserAuth();
                  ref.read(profileStateManager.notifier).updateProfile();
                },
              ),
              const SizedBox(height: 10),
              ButtonWithUnderline(
                text: logoutButton,
                screenPath: loginScreenPath,
                func: () {
                  ref.read(profileStateManager.notifier).logout();
                },
                color: darkBlue,
              ),
              ButtonWithUnderline(
                text: deleteAccountButton,
                screenPath: loginScreenPath,
                func: () {
                  ref
                      .read(profileStateManager.notifier)
                      .deleteAccount();
                  goRouter.go(signupScreenPath);
                },
                color: darkBlue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
