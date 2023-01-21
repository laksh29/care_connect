// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDHLafMI-3UK_D78DRb5vNKBJP5Tqe-sKw',
    appId: '1:964625707662:web:b8c830331d06abe54f4fdf',
    messagingSenderId: '964625707662',
    projectId: 'hospitalmanagament101',
    authDomain: 'hospitalmanagament101.firebaseapp.com',
    storageBucket: 'hospitalmanagament101.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDm9zR676Od5HZKWGeWYZcZG5a0t-3SK_w',
    appId: '1:964625707662:android:ff95bc6ac3d69b2a4f4fdf',
    messagingSenderId: '964625707662',
    projectId: 'hospitalmanagament101',
    storageBucket: 'hospitalmanagament101.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7irHpZw-hdW94JEzISE8sM5RQyeprHNg',
    appId: '1:964625707662:ios:a66d431b7ae4379f4f4fdf',
    messagingSenderId: '964625707662',
    projectId: 'hospitalmanagament101',
    storageBucket: 'hospitalmanagament101.appspot.com',
    iosClientId: '964625707662-3pbsjn3jsqpu2h9m7lblri2va5cdpms5.apps.googleusercontent.com',
    iosBundleId: 'com.careconnect.careConnect',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7irHpZw-hdW94JEzISE8sM5RQyeprHNg',
    appId: '1:964625707662:ios:a66d431b7ae4379f4f4fdf',
    messagingSenderId: '964625707662',
    projectId: 'hospitalmanagament101',
    storageBucket: 'hospitalmanagament101.appspot.com',
    iosClientId: '964625707662-3pbsjn3jsqpu2h9m7lblri2va5cdpms5.apps.googleusercontent.com',
    iosBundleId: 'com.careconnect.careConnect',
  );
}