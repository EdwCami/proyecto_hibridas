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
    apiKey: 'AIzaSyDOViUHebQda-I4tZuYIj6syeR_7r4cprg',
    appId: '1:94146139278:web:54beaf1d0362652c5a25df',
    messagingSenderId: '94146139278',
    projectId: 'cam-es-bcf09',
    authDomain: 'cam-es-bcf09.firebaseapp.com',
    storageBucket: 'cam-es-bcf09.firebasestorage.app',
    measurementId: 'G-D6BYP52H8S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANqJBCz_hbTetI_XMYxU2RqUOJs3AarDk',
    appId: '1:94146139278:android:97052ce0b6d524b75a25df',
    messagingSenderId: '94146139278',
    projectId: 'cam-es-bcf09',
    storageBucket: 'cam-es-bcf09.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBlkpuH-zJ3CdlQpCtVEtU391Edz-r6XFs',
    appId: '1:94146139278:ios:05da5b8efd6a7d8a5a25df',
    messagingSenderId: '94146139278',
    projectId: 'cam-es-bcf09',
    storageBucket: 'cam-es-bcf09.firebasestorage.app',
    iosBundleId: 'com.CamiloEsteban.CamES',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBlkpuH-zJ3CdlQpCtVEtU391Edz-r6XFs',
    appId: '1:94146139278:ios:e5fb4be10e7156535a25df',
    messagingSenderId: '94146139278',
    projectId: 'cam-es-bcf09',
    storageBucket: 'cam-es-bcf09.firebasestorage.app',
    iosBundleId: 'com.example.proyectoHibridas',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDOViUHebQda-I4tZuYIj6syeR_7r4cprg',
    appId: '1:94146139278:web:ad3ba432594e71905a25df',
    messagingSenderId: '94146139278',
    projectId: 'cam-es-bcf09',
    authDomain: 'cam-es-bcf09.firebaseapp.com',
    storageBucket: 'cam-es-bcf09.firebasestorage.app',
    measurementId: 'G-JTSQG1RJSS',
  );
}
