import 'package:bankapp/bahl.dart';
import 'dart:io';

void main(){
 try{
  BAHL owaisAccount = BAHL();
  print("Welcome to the Bank Al Habib Limited");
  print("===============================================");
  print("What operation would you like to perform?");
  print("1. Deposit \n 2. Withdraw \n 3. Balance Inquiry");

  int choice = int.parse(stdin.readLineSync()!);
  if(choice > 0 || choice < 4){
    if(choice == 1){
      print("Enter the amount to deposit:");
      num amount = num.parse(stdin.readLineSync()!);
      owaisAccount.deposit(amount);
      owaisAccount.balanceInquiry();
    }
    else if(choice == 2){
      print("Enter the amount to withdraw:");
      // num amount = num.parse(stdin.readLineSync()!);
      // owaisAccount.withdraw(amount);
      // owaisAccount.balanceInquiry();
    }
    else if(choice == 3){
      owaisAccount.balanceInquiry();
    }  
    else{
      print("Invalid choice. Please select a valid option.");
    }
  }
 } on FormatException{
  print("Invalid input. Please enter a number.");
 }catch(e){
  print("Error: $e");
 }
}