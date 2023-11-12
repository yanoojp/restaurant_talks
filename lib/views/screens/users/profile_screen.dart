import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/generated/l10n.dart';
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
              Text(S.of(context).editProfileScreen),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Text(S.of(context).emailHintText),
                  TextField(
                    controller: profileState.emailController,
                  ),
                  const SizedBox(height: 30),
                  Text(S.of(context).passwordHintText),
                  TextField(
                    controller: profileState.passwordController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          profileState.isObscure
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: blackColor,
                        ),
                        onPressed: () {
                          ref
                              .read(profileStateManager.notifier)
                              .updateIsObscure(profileState.isObscure);
                        },
                      ),
                    ),
                    obscureText: profileState.isObscure,
                  ),
                  const SizedBox(height: 30),
                  Text(S.of(context).managerNameHintText),
                  TextField(
                    controller: profileState.managerNameController,
                  ),
                  const SizedBox(height: 30),
                  Text(S.of(context).restaurantNameHintText),
                  TextField(
                    controller: profileState.restaurantNameController,
                  ),
                  const SizedBox(height: 30),
                  Text(S.of(context).languageHintText),
                  DropdownButton<String>(
                    value: ref
                        .watch(profileStateManager.notifier)
                        .getCurrentLanguage,
                    items: <String>[enSelectItem, jaSelectItem]
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value == enSelectItem
                              ? englishLanguage
                              : japaneseLanguage,
                          style: const TextStyle(color: blackColor),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      ref
                          .read(profileStateManager.notifier)
                          .updateLanguage(newValue, context);
                    },
                    dropdownColor: darkYellow,
                    style: const TextStyle(color: whiteColor),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
              const SizedBox(height: 30),
              Button(
                text: S.of(context).saveButton,
                func: () {
                  ref
                      .read(profileStateManager.notifier)
                      .validateProfileForm(profileState, context);
                  ref
                      .read(profileStateManager.notifier)
                      .updateUserAuth(context);
                  ref.read(profileStateManager.notifier).updateProfile(context);
                },
              ),
              const SizedBox(height: 10),
              ButtonWithUnderline(
                text: S.of(context).logoutButton,
                func: () async {
                  await ref.read(profileStateManager.notifier).logout();
                  goRouter.go(loginScreenPath);
                },
                color: darkBlue,
              ),
              ButtonWithUnderline(
                text: S.of(context).deleteAccountButton,
                func: () {
                  ref.read(profileStateManager.notifier).deleteAccount();
                  goRouter.go(loginScreenPath);
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
