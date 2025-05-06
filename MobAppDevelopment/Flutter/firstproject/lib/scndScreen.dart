import 'package:flutter/material.dart';

class ScndScreen extends StatefulWidget {
  const ScndScreen({ Key? key }) : super(key: key);

  @override
  _ScndScreenState createState() => _ScndScreenState();
}

class _ScndScreenState extends State<ScndScreen> {
  var user = {'userName': 'Ashar Ahmed', 'userAge': 23, 'userDesignation': 'Flutter Developer'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('${user['userName']}\'s Profile'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        
        child: Column(
          children: [
            Text("User's Profile",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(221, 250, 250, 250),
              ),
            ),
            SizedBox(height: 20),
            Image.network('https://avatars.githubusercontent.com/u/57331778?v=4',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
              ),
            SizedBox(height: 20),
            Text("Name: ${user['userName']}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(221, 250, 250, 250),
              ),
            ),
            SizedBox(height: 20),
            Text("Age: ${user['userAge']}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(221, 250, 250, 250),
              ),
            ),
            SizedBox(height: 20),
            Text("Designation: ${user['userDesignation']}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(221, 250, 250, 250),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                print("Before btn press User Name: ${user['userName']}");
                setState(() {
                  user['userName'] = 'Owais Ahmed';
                });
                print("After btn press User Name: ${user['userName']}");
              },
              child: Text('Change User Name'))
          
          ],
        ),
      ),
    );
  }
}