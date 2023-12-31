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
    apiKey: 'AIzaSyCWeDiw5hWDIiHTOBC5QjnKdsIT791eO08',
    appId: '1:241190190087:web:9a30489caaf51e57d03ea2',
    messagingSenderId: '241190190087',
    projectId: 'likedit-76b13',
    authDomain: 'likedit-76b13.firebaseapp.com',
    storageBucket: 'likedit-76b13.appspot.com',
    measurementId: 'G-LZF542JR6D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBE9ThEsP3rExKDGiZZSSj_PLUmxItMXaU',
    appId: '1:241190190087:android:40faf3f50587d7ebd03ea2',
    messagingSenderId: '241190190087',
    projectId: 'likedit-76b13',
    storageBucket: 'likedit-76b13.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmVcAtPQb6UOS7IAJq9wWj8dRLYTeAS_4',
    appId: '1:241190190087:ios:cf76c919e7e97a75d03ea2',
    messagingSenderId: '241190190087',
    projectId: 'likedit-76b13',
    storageBucket: 'likedit-76b13.appspot.com',
    iosClientId:
        '241190190087-ml231e5et9sfpbbjl0jrpcakbnopott0.apps.googleusercontent.com',
    iosBundleId: 'com.codex.aly.linkedit',
  );
}
