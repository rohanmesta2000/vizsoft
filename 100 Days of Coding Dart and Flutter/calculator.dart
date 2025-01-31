import 'dart:io';

void main() {
  
  print('Welcome to the Basic Calculator');

  print('Enter the first number:');
  double? num1 = double.tryParse(stdin.readLineSync()!);

  print('Enter the second number:');
  double? num2 = double.tryParse(stdin.readLineSync()!);

  if (num1 == null || num2 == null) {
    print('Invalid input. Please enter valid numbers.');
    return;
  }

  double sum = num1 + num2;
  double difference = num1 - num2;
  double product = num1 * num2;
  double quotient;

  if (num2 != 0) {
    quotient = num1 / num2;
  } else {
    quotient = double.nan; 
  }

  print('\nResults:');
  print('Addition: $num1 + $num2 = $sum');
  print('Subtraction: $num1 - $num2 = $difference');
  print('Multiplication: $num1 * $num2 = $product');
  
  if (num2 != 0) {
    print('Division: $num1 / $num2 = $quotient');
  } else {
    print('Division: Cannot divide by zero.');
  }
}