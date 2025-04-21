import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase project.
///
/// Example:
/// ```dart
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
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  /// Web platform's Firebase options.
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDDABkTFPfZIuXMOJAUYLPVCEPLT5D9HtQ',
    appId: '1:816597884276:web:69929c9d3a9a9a9a9a9a9a',
    messagingSenderId: '816597884276',
    projectId: 'post-pro-v1',
    authDomain: 'post-pro-v1.firebaseapp.com',
    storageBucket: 'post-pro-v1.appspot.com',
  );

  /// Android platform's Firebase options.
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId: '',
    projectId: '',
    storageBucket: null,
  );

  /// iOS platform's Firebase options.
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId: '',
    projectId: '',
    storageBucket: null,
    iosClientId: null,
    iosBundleId: null,
  );

  /// MacOS platform's Firebase options.
  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId: '',
    projectId: '',
    storageBucket: null,
    iosClientId: null,
    iosBundleId: null,
  );

  /// Windows platform's Firebase options.
  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId: '',
    projectId: '',
    storageBucket: null,
  );

  /// Linux platform's Firebase options.
  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId: '',
    projectId: '',
    storageBucket: null,
  );
}
