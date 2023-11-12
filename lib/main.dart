import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/generated/l10n.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/view_model/users/profile_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileStateManager);

    return MaterialApp.router(
      locale: profileState.currentLocale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: normalFontSize),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: blackColor,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: blackColor),
          ),
        ),
      ),
      routerConfig: goRouter,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('ja', ''),
      ],
    );
  }
}
