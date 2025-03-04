import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'containers/safra/componentes/home.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyB6jrvDfXej04M39hU6HLbCWQzVFbp0eo8",
          appId: "1:591807715325:web:150108558a615d0366eb94",
          messagingSenderId: "591807715325",
          projectId: "safra-facil-c865c"));
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Safra Fácil",
      home: Home(),
    );
  }
}
