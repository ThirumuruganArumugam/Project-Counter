/* Import the counter/model.dart */
import 'package:counter/model.dart';


/* Create a class named CounterVM which extends the class HomeSrceenModel */
class CounterVM extends HomeScreenModel{

// Create a function named as updateCounter
  void updateCounter() {
    // Declare the counter variable as counter plus 1.
    counter = counter + 1;
    // print the counter
    print(counter);
  }
  

// Create a function named as deCounter
  void deCounter() {
    // Declare the counter variable as counter minus 1.
    counter = counter - 1;
    // print the counter
    print(counter);
  }
}

