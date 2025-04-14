import 'dart:io';
void main(){
  print("Welcome in Dart Programming");

  //VAribales in Dart
  var carName = "Carolla";
  const carYear = 2022;
  final carBrand = "Toyota";
  int carPrice = 20000;

  // stdout.write("Car Name: $carName\n");
  // stdout.write("Car Year: $carYear\n");
  // stdout.write("Car Brand: $carBrand\n");
  // stdout.write("Car carPrice: $carPrice\n");


  //String Data Types
  String name = "John Doe";
  //Numeric Data Types
  num age = 23;
  double height = 5.9;
  int salary = 50000;
  // print("Name: $name");
  // print("Age: $age");
  // print("Height: $height");
  // print("Salary: $salary");

  // //Boolean Data Types
  // bool isEmployed = true;
  // print("Is Employed: $isEmployed");

  // //List Data Types
  List<String> carNames = ["Carolla", "Civic", "BMW", "Accord"];
  // print("Car Names: $carNames");
  print("First Car Name: ${carNames[0]}");
  print("Last Car Name: ${carNames[3]}");

  //length of List
  print("Length of List: ${carNames.length}");

  //Adding new element in List
  carNames.add("Tesla");

  //Removing element from List
  carNames.remove("BMW");
  print("Car Names: $carNames");

  //User Input
  stdout.write("Enter your name: ");
  // String? userName = stdin.readLineSync();
  String userName = stdin.readLineSync()!;
  print("Hello, $userName!");

  stdout.write("Enter your age: ");
  int userAge = int.parse(stdin.readLineSync()!);
  print("Age is: $userAge");

}