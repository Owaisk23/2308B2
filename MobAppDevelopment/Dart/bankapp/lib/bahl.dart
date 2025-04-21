class BAHL{
  //private variables
  num _accountBalance = 2500;

  void deposit(num amount){
    try{
      if(amount <= 0){
        throw Exception("Deposit amount must be greater than zero.");
      }
      else{
      _accountBalance += amount;
      print("Deposited: $amount. New balance: $_accountBalance");
    }
    } catch(e) {
      print("Error: $e");
    }
  }


  void balanceInquiry(){
    print("Current balance: $_accountBalance");
  }
}