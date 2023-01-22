// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:care_connect/widget/custom_error_dialog.dart';

class UserAuth {
  var firebaseAuthService = FirebaseAuth.instance;

  // create new user
  Future<UserCredential> registerUser(String userEmail, String userPass) async {
    var response = await firebaseAuthService.createUserWithEmailAndPassword(
        email: userEmail, password: userPass);
    return response;
  }

  // Login user
  Future<UserCredential> loginUser(String userEmail, String userPass) async {
    var response = await firebaseAuthService.signInWithEmailAndPassword(
        email: userEmail, password: userPass);
    return response;
  }
}




