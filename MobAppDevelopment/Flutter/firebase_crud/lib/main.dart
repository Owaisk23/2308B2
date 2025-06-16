import 'package:firebase_crud/addproduct.dart';
import 'package:firebase_crud/splashScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
        '/addproduct': (context) => Addproduct(),        
    },
    )
  );
}