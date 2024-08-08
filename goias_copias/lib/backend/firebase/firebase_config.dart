import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAb4hsrL-G3Ho5qN--6bVcHV3ka6mEmYBk",
            authDomain: "printz-6kass7.firebaseapp.com",
            projectId: "printz-6kass7",
            storageBucket: "printz-6kass7.appspot.com",
            messagingSenderId: "408216495405",
            appId: "1:408216495405:web:086043d8b6da411f7d5fa4"));
  } else {
    await Firebase.initializeApp();
  }
}
