import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/generated/l10n.dart';
import 'package:restaurant_talks/models/users/login_model.dart';
import 'package:restaurant_talks/models/users/profile_model.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final usersRef = FirebaseFirestore.instance.collection('users');
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserCredential?> register(Profile profile) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: profile.email,
        password: profile.password,
      );

      await usersRef.doc(userCredential.user!.uid).set({
        emailField: profile.email,
        managerNameField: profile.managerName,
        restaurantNameField: profile.restaurantName,
        languageField: profile.language
      });

      User? user = userCredential.user;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
      }

      // Here, you can decide whether you want to log the user in right away or
      // redirect them to a screen that informs them to check their email for verification.
      // If you choose to redirect, make sure your main app flow checks the emailVerified
      // property before letting the user proceed.

      return userCredential;
    } catch (e) {
      return null;
    }
  }

  Future<UserCredential?> login(CustomisedUser user) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      return userCredential;
    } catch (e) {
      return null;
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<void> updateUserAuths(
      {required String email,
      String? password,
      required BuildContext context}) async {
    User? user = _firebaseAuth.currentUser;

    if (user != null) {
      await user.updateEmail(email);
      if (password != null) await user.updatePassword(password);
    } else {
      throw Exception(S.of(context).userNotLoggedInMessage);
    }
  }

  Future<void> updateUserProfiles(
      {required String email,
      required String managerName,
      required String restaurantName,
      required String language,
      required BuildContext context}) async {
    User? user = _firebaseAuth.currentUser;

    if (user != null) {
      await _firestore.collection(usersCollection).doc(user.uid).update({
        emailField: email,
        managerNameField: managerName,
        restaurantNameField: restaurantName,
        languageField: language
      });
    } else {
      throw Exception(S.of(context).userNotLoggedInMessage);
    }
  }
}
