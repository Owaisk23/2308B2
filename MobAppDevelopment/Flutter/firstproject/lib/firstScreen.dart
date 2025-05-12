import 'package:flutter/material.dart';
import 'package:firstproject/drawerSide.dart' as drawerSide;


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

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

      // Single Child Scroll View: Scrollable Column or Row


      // body: SingleChildScrollView(
      //   // scrollDirection: Axis.vertical,
      //   child: Center(
      //     child: Column(
      //       children: [
      //         Text(
      //           "Welcome to First Screen",
      //           style: TextStyle(
      //             fontSize: 30,
      //             fontWeight: FontWeight.bold,
      //             color: const Color.fromARGB(221, 250, 250, 250),
      //           ),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //           child: Icon(Icons.home, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.brown,
      //           child: Icon(Icons.book, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //           child: Icon(Icons.phone, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.pinkAccent,
      //           child: Icon(
      //             Icons.wheelchair_pickup,
      //             color: Colors.white,
      //             size: 50,
      //           ),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.purple,
      //           child: Icon(Icons.alarm, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.deepOrange,
      //           child: Icon(Icons.wallet, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blueAccent,
      //           child: Icon(
      //             Icons.back_hand,
      //             color: Colors.white,
      //             size: 50,
      //           ),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.redAccent,
      //           child: Icon(Icons.hub, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.green,
      //           child: Icon(Icons.gas_meter, color: Colors.white, size: 50),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      //Main Axis Alignment: start, end, center....

      // body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       // mainAxisAlignment: MainAxisAlignment.start,
      //       // mainAxisAlignment: MainAxisAlignment.end,
      //       // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         // Text(
      //         //   "Welcome to First Screen",
      //         //   style: TextStyle(
      //         //     fontSize: 30,
      //         //     fontWeight: FontWeight.bold,
      //         //     color: const Color.fromARGB(221, 250, 250, 250),
      //         //   ),
      //         // ),
      //         // SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.deepOrange,
      //           child: Icon(Icons.wallet, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blueAccent,
      //           child: Icon(
      //             Icons.back_hand,
      //             color: Colors.white,
      //             size: 50,
      //           ),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.redAccent,
      //           child: Icon(Icons.hub, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 20),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.green,
      //           child: Icon(Icons.gas_meter, color: Colors.white, size: 50),
      //         ),
      //       ],
      //     ),
      //   ),
      body: Padding(
        // padding: const EdgeInsets.all(40),
        // padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        padding: const EdgeInsets.only(top: 40, bottom: 20, left: 50, right: 10),
        child: Center(
          child: ListView(
            children: [
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
                color: Colors.blueAccent,
                child: Icon(
                  Icons.back_hand,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
                child: Icon(Icons.hub, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Icon(Icons.gas_meter, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
                child: Icon(
                  Icons.back_hand,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
                child: Icon(Icons.hub, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Icon(Icons.gas_meter, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
                child: Icon(
                  Icons.back_hand,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
                child: Icon(Icons.hub, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Icon(Icons.gas_meter, color: Colors.white, size: 50),
              ),
            ],
          ),
        ),
        ),
        drawer: drawerSide.DrawerSide(),
    );
  }
}
