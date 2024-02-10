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
    apiKey: 'AIzaSyCIL7cY-vo-BfqLHJ5enHyApkrxb0V8IMc',
    appId: '1:60706498880:web:7ea96c87f5c3161b8ef2a5',
    messagingSenderId: '60706498880',
    projectId: 'ecole229-550fd',
    authDomain: 'ecole229-550fd.firebaseapp.com',
    storageBucket: 'ecole229-550fd.appspot.com',
    measurementId: 'G-V847YY2C5N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCCz0r2tFqayuOn4vkFwifqyiz5kbKVqg',
    appId: '1:60706498880:android:cb36eaeac8cc51348ef2a5',
    messagingSenderId: '60706498880',
    projectId: 'ecole229-550fd',
    storageBucket: 'ecole229-550fd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCydZ1VM0Bokm2s7-eZvQkg401sGn-llhQ',
    appId: '1:60706498880:ios:b21b3e1a101ec2258ef2a5',
    messagingSenderId: '60706498880',
    projectId: 'ecole229-550fd',
    storageBucket: 'ecole229-550fd.appspot.com',
    iosBundleId: 'com.example.tpProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCydZ1VM0Bokm2s7-eZvQkg401sGn-llhQ',
    appId: '1:60706498880:ios:fc2ab03eef0bcacc8ef2a5',
    messagingSenderId: '60706498880',
    projectId: 'ecole229-550fd',
    storageBucket: 'ecole229-550fd.appspot.com',
    iosBundleId: 'com.example.tpProject.RunnerTests',
  );
}
