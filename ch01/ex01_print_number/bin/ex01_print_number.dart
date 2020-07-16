import 'dart:io';

//// This is where the app starts executing.
void main() {
  var number = 5; // Declare and initialize a variable.
  printNumber(number); // Call a function.

  number = 5 + 7;
  printNumber(number);
}

/// Function definition.
void printNumber(int value) {
  if (value < 7) {
    stderr
        .writeln('The number $value is less than 7.'); // Print to the console.
  } else {
    stdout.writeln('The number is $value.'); // Print to the console.
  }
}
