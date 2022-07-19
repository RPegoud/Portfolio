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
    apiKey: 'AIzaSyBWXy53uPjSg0SlLluyEo1sxekku9Nktcc',
    appId: '1:1095148119561:web:475174d47acbb766e13ad8',
    messagingSenderId: '1095148119561',
    projectId: 'portfolio-68d19',
    authDomain: 'portfolio-68d19.firebaseapp.com',
    storageBucket: 'portfolio-68d19.appspot.com',
    measurementId: 'G-P55275WWN1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEC7BsnJtfqpn96zNJ2hJse1idRJEME98',
    appId: '1:1095148119561:android:14e8d81f70f8126ae13ad8',
    messagingSenderId: '1095148119561',
    projectId: 'portfolio-68d19',
    storageBucket: 'portfolio-68d19.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCe5cs8zxUiEj928uo1orb_j3DVynOcC7Q',
    appId: '1:1095148119561:ios:eaa56c2cfb3741c2e13ad8',
    messagingSenderId: '1095148119561',
    projectId: 'portfolio-68d19',
    storageBucket: 'portfolio-68d19.appspot.com',
    iosClientId: '1095148119561-0d929hi9uih64gclb2354bns7udqrlnd.apps.googleusercontent.com',
    iosBundleId: 'com.example.portfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCe5cs8zxUiEj928uo1orb_j3DVynOcC7Q',
    appId: '1:1095148119561:ios:e2d3af09aecc7573e13ad8',
    messagingSenderId: '1095148119561',
    projectId: 'portfolio-68d19',
    storageBucket: 'portfolio-68d19.appspot.com',
    iosClientId: '1095148119561-61l93kf5hjdebpn9db1cihngj5omlenh.apps.googleusercontent.com',
    iosBundleId: '.com',
  );
}
