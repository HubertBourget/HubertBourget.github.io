import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD-Tvz13CguYX5TsvB_z-kr6CllIkZn1Es",
            authDomain: "sacred-sound.firebaseapp.com",
            projectId: "sacred-sound",
            storageBucket: "sacred-sound.appspot.com",
            messagingSenderId: "834133458789",
            appId: "1:834133458789:web:66fc7271f5ed7dfe35ab8c",
            measurementId: "G-F9793PC13H"));
  } else {
    await Firebase.initializeApp();
  }
}
