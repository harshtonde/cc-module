import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBMdwN07OdlrR5tvDjktvEAJOI90_Jm3qA",
            authDomain: "testff-66a80.firebaseapp.com",
            projectId: "testff-66a80",
            storageBucket: "testff-66a80.appspot.com",
            messagingSenderId: "617804186838",
            appId: "1:617804186838:web:7aa9adaf4caf20e26cb577",
            measurementId: "G-PGH7MSSMPL"));
  } else {
    await Firebase.initializeApp();
  }
}
