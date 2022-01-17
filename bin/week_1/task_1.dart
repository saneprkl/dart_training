// Define a function.
import 'dart:math';

void printInteger(int aNumber) {
  double squareRoot = sqrt(aNumber);
  int squareRounded = squareRoot.round();
  print('The number is $squareRounded.');
}

// This is where the app starts executing.
void main() {
  var number = 777; // Declare and initialize a variable.
  printInteger(number); // Call a function.
}