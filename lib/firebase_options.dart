// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCsyIwjkp4OSvY4y3-DhoWIwX82zhPoPrQ',
    appId: '1:426090831933:web:3eb1c2aa14454b0ce48a54',
    messagingSenderId: '426090831933',
    projectId: 'mobilen2-c7dab',
    authDomain: 'mobilen2-c7dab.firebaseapp.com',
    storageBucket: 'mobilen2-c7dab.firebasestorage.app',
    measurementId: 'G-26NPMC2R0J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDK3SW3JlziWT-w_Zh0bypv4_Q9bynCfTU',
    appId: '1:426090831933:android:efa28e2b91e720e9e48a54',
    messagingSenderId: '426090831933',
    projectId: 'mobilen2-c7dab',
    storageBucket: 'mobilen2-c7dab.firebasestorage.app',
  );
}