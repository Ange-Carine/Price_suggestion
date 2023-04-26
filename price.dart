
import 'dart:io';

void main() {

  int thresholdVol = 1500;

  Map Bucket = {
    'catName': "Bucket",
    'catVol': 30,
    'catPrice': 250
  };

  Map trashBag = {
    'catName': "Trashbag",
    'catVol': 35,
    'catPrice': 300
  }; 

   Map wheelBarrow = {
    'catName': "Wheelbarrow",
    'catVol': 40,
    'catPrice': 500
  };

  List trashCategory = [
    Bucket,
    trashBag,
    wheelBarrow,
  ];


  print('Enter trash category: ');
  String category = stdin.readLineSync() as String;


  switch(category) {
    case "Bucket": {
      print('Enter your quantity: ');
      int quantity = int.parse(stdin.readLineSync() as String);
      int trashVolume = trashCategory[0]['catVol'];
      if (trashVolume > thresholdVol) {
        print("Owner might be a business.");
        return;
      }
      print("Enter your price");
      String price = stdin.readLineSync()!;
      int userPrice = int.parse(price);
      int expectedPrice = trashCategory[0]['catPrice'] * quantity;
      if (userPrice < (expectedPrice ~/ 2)) {
        print("The price you entered is low, we recommend you pay $expectedPrice");
        String choice = getUserInput("Do you accept to pay the recommended price? *y/n");
        switch(choice) {
          case "y": {
            userPrice = expectedPrice;
            print("You have agreed to pay $expectedPrice, thank you");
          };
          break;
          case "n": {
            print("You have declined to pay $expectedPrice, entering bidding mode...");
            int newPrice = int.parse(getUserInput("Enter your new price"));
            int price70 = (expectedPrice * 0.7).toInt();
            int price75 = (expectedPrice * 0.75).toInt();
            int price80 = (expectedPrice * 0.8).toInt();

            if (newPrice >= price70) {
              print("Acceptable, sending bid to agent for confirmation");
              return;
            } else {
              print("Sorry, your price is still low! you are expected to pay either ${price70}frs or ${price75}frs or ${price80}frs ");
            }
          }
          break;
        }
      } else {
        print("Thank you for using our services, your request has been forwared");
      }
      
    }
    break;
    case "Trashbag": {
      print('Enter your quantity: ');
      int quantity = int.parse(stdin.readLineSync() as String);
      int trashVolume = trashCategory[0]['catVol'];
      if (trashVolume > thresholdVol) {
        print("Owner might be a business.");
        return;
      }
      print("Enter your price");
      String price = stdin.readLineSync()!;
      int userPrice = int.parse(price);
      int expectedPrice = trashCategory[0]['catPrice'] * quantity;
      if (userPrice < (expectedPrice ~/ 2)) {
        print("The price you entered is low, we recommend you pay $expectedPrice");
        String choice = getUserInput("Do you accept to pay the recommended price? *y/n");
        switch(choice) {
          case "y": {
            userPrice = expectedPrice;
            print("You have agreed to pay $expectedPrice, thank you");
          };
          break;
          case "n": {
            print("You have declined to pay $expectedPrice, entering bidding mode...");
            int newPrice = int.parse(getUserInput("Enter your new price"));
            int price70 = (expectedPrice * 0.7).toInt();
            int price75 = (expectedPrice * 0.75).toInt();
            int price80 = (expectedPrice * 0.8).toInt();

            if (newPrice >= price70) {
              print("Acceptable, sending bid to agent for confirmation");
              return;
            } else {
              print("Sorry, your price is still low! you are expected to pay either ${price70}frs or ${price75}frs or ${price80}frs ");
            }
          }
          break;
        }
      } else {
        print("Thank you for using our services, your request has been forwared");
      }
      
    }
    break;
    case "Wheelbarrow": {
      print('Enter your quantity: ');
      int quantity = int.parse(stdin.readLineSync() as String);
      int trashVolume = trashCategory[0]['catVol'];
      if (trashVolume > thresholdVol) {
        print("Owner might be a business.");
        return;
      }
      print("Enter your price");
      String price = stdin.readLineSync()!;
      int userPrice = int.parse(price);
      int expectedPrice = trashCategory[0]['catPrice'] * quantity;
      if (userPrice < (expectedPrice ~/ 2)) {
        print("The price you entered is low, we recommend you pay $expectedPrice");
        String choice = getUserInput("Do you accept to pay the recommended price? *y/n");
        switch(choice) {
          case "y": {
            userPrice = expectedPrice;
            print("You have agreed to pay $expectedPrice, thank you");
          };
          break;
          case "n": {
            print("You have declined to pay $expectedPrice, entering bidding mode...");
            int newPrice = int.parse(getUserInput("Enter your new price"));
            int price70 = (expectedPrice * 0.7).toInt();
            int price75 = (expectedPrice * 0.75).toInt();
            int price80 = (expectedPrice * 0.8).toInt();

            if (newPrice >= price70) {
              print("Acceptable, sending bid to agent for confirmation");
              return;
            } else {
              print("Sorry, your price is still low! you are expected to pay either ${price70}frs or ${price75}frs or ${price80}frs ");
            }
          }
          break;
        }
      } else {
        print("Thank you for using our services, your request has been forwared");
      }
      
    }
    break;
  }
}

  String getUserInput(prompt) {
    print(prompt);
    return stdin.readLineSync()!;
  }