import 'dart:io';

double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  if (b == 0) {
    print("Division by zero not allowed");
    return double.nan;
  }
  return a / b;
}
void main() {
  while (true) {
    print("Calculator:");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Exit");

    stdout.write("Enter your choice...: ");
    int? choice = int.tryParse(stdin.readLineSync()!);

    if (choice == null || choice < 1 || choice > 5) {
      print("Please enter a number between 1 to 5");
      continue;
    }

    if (choice == 5) {
      print("Exiting calculator");
      break;
    }

    stdout.write("Enter first number: ");
    double? num1 = double.tryParse(stdin.readLineSync()!);

    stdout.write("Enter second number: ");
    double? num2 = double.tryParse(stdin.readLineSync()!);

    if (num1 == null || num2 == null) {
      print("Please enter valid numbers");
      continue;
    }

    double result;
    switch (choice) {
      case 1:
        result = add(num1, num2);
        print("Result: $num1 + $num2 = $result");
        break;
      case 2:
        result = subtract(num1, num2);
        print("Result: $num1 - $num2 = $result");
        break;
      case 3:
        result = multiply(num1, num2);
        print("Result: $num1 × $num2 = $result");
        break;
      case 4:
        result = divide(num1, num2);
        if (!result.isNaN) {
          print("Result: $num1 ÷ $num2 = $result");
        }
        break;
    }
  }
}