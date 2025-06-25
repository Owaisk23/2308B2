import 'package:crud/addproduct.dart';
import 'package:crud/firebase_options.dart';
import 'package:crud/products.dart';
import 'package:crud/signup.dart';
import 'package:crud/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // <--- ADD THIS
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        "/signup":(context)=> Signup(),
        "/products":(context)=>  Products(),
        // "/add":(context)=> (isLoggedIn && isAdmin) ? Addproduct(): Login(),
        // "/login":(context)=>Login(),
      },
      )
    );
}
