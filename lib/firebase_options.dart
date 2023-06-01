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
    apiKey: 'AIzaSyCPRg9VGBU_EffjOm6DbCQ72bpMcFW3ooU',
    appId: '1:736154447781:web:8b47401f35c20418d2c24c',
    messagingSenderId: '736154447781',
    projectId: 'alunoonline-1f531',
    authDomain: 'alunoonline-1f531.firebaseapp.com',
    storageBucket: 'alunoonline-1f531.appspot.com',
    measurementId: 'G-DRJ5FJ1Z6Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC3xAyoHlV3Dui7wbTmWan1DWZAND-fauo',
    appId: '1:736154447781:android:0dccbab48b930a76d2c24c',
    messagingSenderId: '736154447781',
    projectId: 'alunoonline-1f531',
    storageBucket: 'alunoonline-1f531.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDE9XqvoGY3thVKVRw47AcHRTeA-_YaFVQ',
    appId: '1:736154447781:ios:d7fa329a5ce59ad1d2c24c',
    messagingSenderId: '736154447781',
    projectId: 'alunoonline-1f531',
    storageBucket: 'alunoonline-1f531.appspot.com',
    iosBundleId: 'com.example.myproject',
  );
}
