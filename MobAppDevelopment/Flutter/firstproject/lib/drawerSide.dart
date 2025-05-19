import 'package:firstproject/dynamicList.dart';
import 'package:firstproject/firstScreen.dart';
import 'package:firstproject/product.dart';
import 'package:firstproject/scndScreen.dart';
import 'package:flutter/material.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({ Key? key }) : super(key: key);

  @override
  _DrawerSideState createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey
            ),
            child: Text('Drawer Header', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.production_quantity_limits),
            title: Text('Scnd Screen'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScndScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.production_quantity_limits),
            title: Text('Dynamic List'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DynamicList()));
            },
          ),
          ListTile(
            leading: Icon(Icons.production_quantity_limits),
            title: Text('Product Screen'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Product()));
            },
          ),
        ],
      ),
    );
  }
}