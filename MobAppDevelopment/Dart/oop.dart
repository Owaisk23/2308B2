
class Car{
  // Variables
  String? carName, carBrand, carColor, carModel;

  //default constructor
  Car(String carName, String carBrand, String carColor, String carModel){
    this.carName = carName;
    this.carBrand = carBrand;
    this.carColor = carColor;
    this.carModel = carModel;
  }

  //named constructor
  Car.carwithoutColor(String carName, String carBrand, String carModel){
    this.carName = carName;
    this.carBrand = carBrand;
    this.carModel = carModel;
  }

  //Methods
  void CarDetails(){
    print("Car Name: $carName");
    print("Car Brand: $carBrand");
    print("Car Color: $carColor");
    print("Car Model: $carModel");
  }



}

void main(){
  print("object oriented programming in dart!");
  //creating object of class Car
  Car        car1     = Car("Civic", "Honda", "Black", "2023");
//ClassName  objName    constructor
  car1.CarDetails(); //calling method of class Car

  print("===================================");

  Car car2 = Car.carwithoutColor("Accord", "Honda", "2004");
  car2.CarDetails();
}