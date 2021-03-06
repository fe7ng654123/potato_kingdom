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
    apiKey: 'AIzaSyCw_odgw9PHfQOhhSXnBcxljNiA4ouuOck',
    appId: '1:1065255879380:web:90e6a50be1258908463141',
    messagingSenderId: '1065255879380',
    projectId: 'potato-kingdom-app',
    authDomain: 'potato-kingdom-app.firebaseapp.com',
    storageBucket: 'potato-kingdom-app.appspot.com',
    measurementId: 'G-W5XVJW4EDM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCIt6W5qupaed25yVKD3vY1wI4dBmtstZs',
    appId: '1:1065255879380:android:d89a54bc09be88f0463141',
    messagingSenderId: '1065255879380',
    projectId: 'potato-kingdom-app',
    storageBucket: 'potato-kingdom-app.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPwdaeyAjjNPYyjAxGJCvsGr51FwjjG5M',
    appId: '1:1065255879380:ios:b62bf17814931510463141',
    messagingSenderId: '1065255879380',
    projectId: 'potato-kingdom-app',
    storageBucket: 'potato-kingdom-app.appspot.com',
    iosClientId: '1065255879380-u9pouqpmp5ah6l7etqi39hsq37ng1t1a.apps.googleusercontent.com',
    iosBundleId: 'com.example.potatoKingdom',
  );
}
