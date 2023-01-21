import 'package:care_connect/widget/custom_error_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

class UserData {
  // userdata save

}
