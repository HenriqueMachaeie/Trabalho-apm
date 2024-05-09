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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBSz_F1iZslWFsKq72vzvRfca3FSmv9SjY',
    appId: '1:418021227295:web:bc0e7aa7574b79e7074e2a',
    messagingSenderId: '418021227295',
    projectId: 'authmeal',
    authDomain: 'authmeal.firebaseapp.com',
    storageBucket: 'authmeal.appspot.com',
    measurementId: 'G-Y5GVPQWSS8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDc0YKiCjZGFxHQOQnyaNc8TRPUZXNU_t8',
    appId: '1:418021227295:android:f46616928d8a89bb074e2a',
    messagingSenderId: '418021227295',
    projectId: 'authmeal',
    storageBucket: 'authmeal.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACtj5cQKhPQcwHXH3Vr6xwR-uoCHku1Lo',
    appId: '1:418021227295:ios:b3126ffeda3de22c074e2a',
    messagingSenderId: '418021227295',
    projectId: 'authmeal',
    storageBucket: 'authmeal.appspot.com',
    iosBundleId: 'com.example.meals',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACtj5cQKhPQcwHXH3Vr6xwR-uoCHku1Lo',
    appId: '1:418021227295:ios:b3126ffeda3de22c074e2a',
    messagingSenderId: '418021227295',
    projectId: 'authmeal',
    storageBucket: 'authmeal.appspot.com',
    iosBundleId: 'com.example.meals',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBSz_F1iZslWFsKq72vzvRfca3FSmv9SjY',
    appId: '1:418021227295:web:f86cdd1c118e2b27074e2a',
    messagingSenderId: '418021227295',
    projectId: 'authmeal',
    authDomain: 'authmeal.firebaseapp.com',
    storageBucket: 'authmeal.appspot.com',
    measurementId: 'G-M18ZQJ1RPG',
  );
}