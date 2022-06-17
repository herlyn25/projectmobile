// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginGoogleUtils {
  static const String TAG = "LoginGoogleUtils";
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

// Google Methods
// Sign in with google

  Future<User?> signInWithGoogle() async {
    log("${TAG}signInWithGoogle()");
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    log("${TAG}googleUser email -->${googleSignInAccount!.email}");
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken);
    UserCredential userCredential =
        await _auth.signInWithCredential(credential);

    User? user = userCredential.user;

    return _isCurrentSignIn(user!);
  }

  signOut() async {
    await _auth.signOut().then((onValue) => print("Sesion terminada"));
    googleSignIn
        .signOut()
        .then((onValue) => print("Sesion de google terminada"));
  }

  Future<User?> _isCurrentSignIn(User user) async {
    if (user != null) {
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final User? currentUser = _auth.currentUser;
      assert(user.uid == currentUser?.uid);

      log("Todo ha ido bien");
      return user;
    }
    return null;
  }
}
