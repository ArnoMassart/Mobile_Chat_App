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
    apiKey: 'AIzaSyCWU6CCXzwmEV44yKCYy4QLnXLk86wMoYA',
    appId: '1:204407140304:web:59fbe0577577b4fa6ed3d5',
    messagingSenderId: '204407140304',
    projectId: 'chatapp-ad135',
    authDomain: 'chatapp-ad135.firebaseapp.com',
    storageBucket: 'chatapp-ad135.appspot.com',
    measurementId: 'G-301P1K4WX6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSIVk64x1ck3mODOypci4k6dxs4mSK6Hc',
    appId: '1:204407140304:android:426f94f883baa25b6ed3d5',
    messagingSenderId: '204407140304',
    projectId: 'chatapp-ad135',
    storageBucket: 'chatapp-ad135.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKxi45VVFpEUIvLqHNWAw_NPBtU1mQU_0',
    appId: '1:204407140304:ios:de9d1e2a589249156ed3d5',
    messagingSenderId: '204407140304',
    projectId: 'chatapp-ad135',
    storageBucket: 'chatapp-ad135.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKxi45VVFpEUIvLqHNWAw_NPBtU1mQU_0',
    appId: '1:204407140304:ios:de9d1e2a589249156ed3d5',
    messagingSenderId: '204407140304',
    projectId: 'chatapp-ad135',
    storageBucket: 'chatapp-ad135.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCWU6CCXzwmEV44yKCYy4QLnXLk86wMoYA',
    appId: '1:204407140304:web:7bbc6d78dc9c12446ed3d5',
    messagingSenderId: '204407140304',
    projectId: 'chatapp-ad135',
    authDomain: 'chatapp-ad135.firebaseapp.com',
    storageBucket: 'chatapp-ad135.appspot.com',
    measurementId: 'G-BF7RSVE3SX',
  );
}