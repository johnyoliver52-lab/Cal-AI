
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'Firebase is not configured for web.',
      );
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;

      default:
        throw UnsupportedError(
          'Firebase is not configured for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyADFQ1-qbsBX_9sU-ClAj3GSN02L8Q91l8',
    appId: '1:54312291440:android:31f1dc63559e8b7266f8b5',
    messagingSenderId: '54312291440',
    projectId: 'cal-ai-c56c2',
    storageBucket: 'cal-ai-c56c2.firebasestorage.app',
  );
}
