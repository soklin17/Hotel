import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hotel/src/screen/homepageView/homepage.dart';
import 'package:hotel/src/screen/loginscreen/login.dart';

import 'package:hotel/src/screen/registerscreen/registerscreen.dart';

import 'src/screen/baordingscreen1/baording1.dart';

void main() {
  runApp(Hotel());
}

class Hotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBaording(),
    );
  }
}

// import 'package:firebase_core/firebase_core.dart';

// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: _initialization,
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return Text("Error");
//           }
//           if (snapshot.connectionState == ConnectionState.done) {
//             return Text("Connection Done");
//           }
//           return Text("Loading");
//         });
//   }
// }
