import 'package:care_connect/widget/custom_error_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserAuth {
  var firebaseAuthService = FirebaseAuth.instance;

  // create new user
  void registerUser(String userEmail, String userPass) async {
    try {
      var response = await firebaseAuthService.createUserWithEmailAndPassword(
          email: userEmail, password: userPass);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw customDialog(e.message);
      }
    }
  }

  // Login user
  void loginUser(String userEmail, String userPass) async {
    try {
      var response = await firebaseAuthService.signInWithEmailAndPassword(
          email: userEmail, password: userPass);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw customDialog(e.message);
      }
    }
  }
}

class UserData{
  // userdata save
  
}