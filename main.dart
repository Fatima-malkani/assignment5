
import 'dart:io';

class Coffee {
  String name;
  num spoonsOfCoffee;
  num spoonsOfSugar;

  Coffee(this.name,this.spoonsOfCoffee,this.spoonsOfSugar);
  String toString() {
    return '$name,$spoonsOfCoffee,$spoonsOfSugar}';

  }
}

void main() {
    var coffeeSystem = CoffeeManagementSystem();
  var iscontinue = true;
  while (iscontinue) {
    print("Choose an option:");
    print("Press 1 for add item");
    print("Press 2 for remove item");
    print("Press 3 for display menu");
    print("Press 4 for exit");

    var userinput = stdin.readLineSync();
    if (userinput == "1") {
    print("Enter the name of the coffee");
    String name = stdin.readLineSync()!;
    print("How many spoons of coffee do you want to add?");
    num spoonsOfCoffee = num.tryParse(stdin.readLineSync()!) ?? 0;
    print("How many spoons of sugar do you want to add?");
    num spoonsOfSugar = num.tryParse(stdin.readLineSync()!) ?? 0;
    coffeeSystem.addItem(name,spoonsOfCoffee,spoonsOfSugar);
    } 
    else if (userinput == "2") {
    print('Enter the name of the coffee you want to remove:');
    String name = stdin.readLineSync()!;
    coffeeSystem.removeItem(name);
    }
     else if (userinput == "3") {
    coffeeSystem.displayMenu();
    } 
    else {
    iscontinue = false;
    }
  }
}

class CoffeeManagementSystem{
    List item = [];



addItem(String name,num spoonsOfCoffee,num spoonsOfSugar) {
item.add(Coffee(name,spoonsOfCoffee,spoonsOfSugar));
}


removeItem(String name) {
    item.removeWhere((coffee) => coffee.name == name);
}

displayMenu() {
  print("Coffee Menu:");
 for (var i = 0; i < item.length; i++) {
     print("$i. ${item[i]}");
  }
  }
}







