import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC9beZjxIZZ4JisCwsWTe7V7kzqfomo6Bc",
            authDomain: "onigbindestores-b209a.firebaseapp.com",
            projectId: "onigbindestores-b209a",
            storageBucket: "onigbindestores-b209a.appspot.com",
            messagingSenderId: "390472160716",
            appId: "1:390472160716:web:28aaef36de98830d307969",
            measurementId: "G-829E31NH1P"));
  } else {
    await Firebase.initializeApp();
  }
}
