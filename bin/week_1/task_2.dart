// Define a function.
import 'dart:math';

void printInteger(int aNumber) {
  for(var i = 0 ; i < 5 ; i++) {
    double squareRoot = sqrt(aNumber);
    int squareRounded = squareRoot.round();
    print('The number is $squareRounded.');
    aNumber = aNumber + 50;
  }
}

// This is where the app starts executing.
void main() {
  var number = 100; // Declare and initialize a variable.
  printInteger(number); // Call a function.
}