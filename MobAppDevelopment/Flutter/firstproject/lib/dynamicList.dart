import 'package:flutter/material.dart';
import 'package:firstproject/drawerSide.dart' as drawerSide;

class DynamicList extends StatefulWidget {
  const DynamicList({ Key? key }) : super(key: key);

  @override
  _DynamicListState createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  final Users = [
    {
      "id": 1,
      "name": "Hathi Bhai"   
    },
    {
      "id": 2,
      "name": "Jeetha Bhai"   
    },
    {
      "id": 3,
      "name": "Munna Bhai"   
    },
    {
      "id": 4,
      "name": "Altaf Bhai"   
    },
    {
      "id": 5,
      "name": "Baba Bhai"   
    },
    {
      "id": 6,
      "name": "Babu Bhai"   
    },
    {
      "id": 7,
      "name": "Shahrukh Bhai"   
    },
    {
      "id": 8,
      "name": "Salman Bhai"   
    },
    {
      "id": 9,
      "name": "Aamir Bhai"   
    },
    {
      "id": 10,
      "name": "Akshay Bhai"   
    },
    {
      "id": 11,
      "name": "Ajay Bhai"   
    },
    {
      "id": 12,
      "name": "Ranbir Bhai"   
    },
    {
      "id": 13,
      "name": "Ranveer Bhai"   
    },
    {
      "id": 14,
      "name": "Hrithik Bhai"   
    },
    {
      "id": 15,
      "name": "Shahid Bhai"   
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: drawerSide.DrawerSide(),
      body: ListView.builder(
        itemCount: Users.length,
        itemBuilder: (context, index) {
         return ListTile(
            title: Text("${Users[index]['name']}"),
            subtitle: Text("They are bhaii users!"),
            leading: Icon(Icons.person, color: Colors.blue, size: 40),
            trailing: Icon(Icons.phone, color: Colors.black, size: 20),
         );
        },
      ),
    );
  }
}