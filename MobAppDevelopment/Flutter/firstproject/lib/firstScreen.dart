import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('First Screen'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome to First Screen",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(221, 255, 252, 252),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Icon(Icons.home, color: Colors.white, size: 50),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              color: Colors.brown,
              child: Icon(Icons.book, color: Colors.white, size: 50),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Icon(Icons.phone, color: Colors.white, size: 50),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent,
              child: Icon(Icons.wheelchair_pickup, color: Colors.white, size: 50),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
              child: Icon(Icons.alarm, color: Colors.white, size: 50),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
              child: Icon(Icons.wallet, color: Colors.white, size: 50),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent,
              child: Icon(Icons.wheelchair_pickup, color: Colors.white, size: 50),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
              child: Icon(Icons.alarm, color: Colors.white, size: 50),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
              child: Icon(Icons.wallet, color: Colors.white, size: 50),
            ),

      
          ],
        ),
        ),
    );
  }
}