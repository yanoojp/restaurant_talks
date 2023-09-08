import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:restaurant_talks/models/users/login_model.dart';
import 'package:restaurant_talks/models/users/profile_model.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final usersRef = FirebaseFirestore.instance.collection('users');

  Future<UserCredential?> register(Profile profile) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: profile.email,
        password: profile.password,
      );

      await usersRef.doc(userCredential.user!.uid).set({
        'email': profile.email,
        'managerName': profile.managerName,
        'restaurantName': profile.restaurantName,
      });

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
}
