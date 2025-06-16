import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/addproduct.dart';
import 'package:firebase_crud/firebase_options.dart';
import 'package:firebase_crud/splashScreen.dart';
import 'package:flutter/material.dart';


void main()async {

  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
        '/addproduct': (context) => Addproduct(),        
    },
    )
  );
}