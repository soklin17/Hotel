import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'src/screen/baordingscreen1/baording1.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialFireBaseApp(),
    );
  }
}
class InitialFireBaseApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Text('It has Error');
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return OnBaording();
        }
        return Text('Loading');
      },
    );
  }
}
