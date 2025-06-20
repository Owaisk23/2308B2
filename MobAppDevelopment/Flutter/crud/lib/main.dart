import 'package:crud/addproduct.dart';
import 'package:crud/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // <--- ADD THIS
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Addproduct()));
}
