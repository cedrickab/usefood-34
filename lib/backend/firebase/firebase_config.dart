import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA1hEShm-47GaFl8_D1DNsIoWFpPC5OVz0",
            authDomain: "usefood-7bc09.firebaseapp.com",
            projectId: "usefood-7bc09",
            storageBucket: "usefood-7bc09.appspot.com",
            messagingSenderId: "835634079271",
            appId: "1:835634079271:web:3c6e0dd319daa1a632d002"));
  } else {
    await Firebase.initializeApp();
  }
}
