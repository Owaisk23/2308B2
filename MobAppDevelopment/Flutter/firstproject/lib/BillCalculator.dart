import 'package:flutter/material.dart';

class BillCalculator extends StatefulWidget {
  const BillCalculator({Key? key}) : super(key: key);

  @override
  _BillCalculatorState createState() => _BillCalculatorState();
}

class _BillCalculatorState extends State<BillCalculator> {
  final GlobalKey<FormState> myformkey = GlobalKey<FormState>();
  TextEditingController unitController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController taxPercentController = TextEditingController();

  //declaring variables here in type double
  double unit = 0,
      pricePerUnit = 0,
      taxPercent = 0,
      billAmount = 0,
      taxAmount = 0,
      finalBillAmount = 0;

  //create billdetails map to store bill values
  var billDetails = {};

  //function to calculate bill
  void calculateBill(){
    if(myformkey.currentState!.validate()){
      //get values from text fields
      unit = double.parse(unitController.text);
      pricePerUnit = double.parse(priceController.text);
      taxPercent = double.parse(taxPercentController.text);

      //calculate bill amount
      billAmount = unit * pricePerUnit;

      //calculate tax amount
      taxAmount = (billAmount * taxPercent) / 100;

      setState(() {
        //calculate final bill amount
      finalBillAmount = billAmount + taxAmount;
      });

      //store values in billDetails map
      billDetails = {
        'unit': unit,
        'pricePerUnit': pricePerUnit,
        'taxPercent': taxPercent,
        'billAmount': billAmount,
        'taxAmount': taxAmount,
        'finalBillAmount': finalBillAmount,
      };

      // //show result in a dialog
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Bill Details'),
          content: Text('Unit: $unit\nPrice per Unit: $pricePerUnit\nTax Percent: $taxPercent\nBill Amount: $billAmount\nTax Amount: $taxAmount\nFinal Bill Amount: $finalBillAmount'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );

      print("Final Bill Amount: $finalBillAmount");
    }else {
      // If the form is not valid, show a snackbar with an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill all fields correctly!'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
          title: Text(
            "KE Energy Association",
            style: TextStyle(color: Colors.indigoAccent, fontSize: 25),
          ),
          centerTitle: true,
          actions: [],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Form(
              key: myformkey,
              child: ListView(
                children: [
                  Text(
                    "Enter the details",
                    style: TextStyle(fontSize: 22, color: Colors.indigoAccent),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter the number of units consumed",
                      prefixIcon: Icon(Icons.electric_bolt_outlined),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      }
                    },
                    controller: unitController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter the price per unit",
                      prefixIcon: Icon(Icons.monetization_on),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      }
                    },
                    controller: priceController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter the tax percentage",
                      prefixIcon: Icon(Icons.percent),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      }
                    },
                    controller: taxPercentController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // ElevatedButton(onPressed: calculateBill, child:
                  // Text("Calculate"))

                  GestureDetector(
                    onTap: calculateBill,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.indigoAccent),
                      child: Center(
                          child: Text(
                        "Calculate Bill",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),

                  // SizedBox(
                  //   height: 60,
                  // ),
                  // Text(finalBillAmount != 0
                  //     ? "Final Bill Amount:$finalBillAmount"
                  //     : "Enter values to get your bill")
                ],
              )
              ),
        )
        );
  }
}