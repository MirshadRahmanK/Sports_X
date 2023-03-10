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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCuUBoS_DbbyilOXm9JNCLQ_jD7zHU8UtI',
    appId: '1:204442230581:web:c321761b89aaea96de767c',
    messagingSenderId: '204442230581',
    projectId: 'sports-9c8b4',
    authDomain: 'sports-9c8b4.firebaseapp.com',
    storageBucket: 'sports-9c8b4.appspot.com',
    measurementId: 'G-R8V2S8Y0GE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChsQtd1BQnYplitZu2XAgGoU4OhCdH36E',
    appId: '1:204442230581:android:603b92337b9b114fde767c',
    messagingSenderId: '204442230581',
    projectId: 'sports-9c8b4',
    storageBucket: 'sports-9c8b4.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCOmxvGhG4HSozci0KO0LQ3prFzCJzISdg',
    appId: '1:204442230581:ios:ea695caedc7ced68de767c',
    messagingSenderId: '204442230581',
    projectId: 'sports-9c8b4',
    storageBucket: 'sports-9c8b4.appspot.com',
    iosClientId: '204442230581-q87s4hqcc7n2sfinibf4nkh53cq40ru9.apps.googleusercontent.com',
    iosBundleId: 'com.example.sportsScore',
  );
}
