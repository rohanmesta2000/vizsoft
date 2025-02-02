import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int targetNumber = random.nextInt(100) + 1;
  int? guess;
  int attempts = 0;

  print(" Welcome to the Number Guessing Game");
  print("Try to guess the number between 1 and 100.");

  while (true) {
    stdout.write("Enter your guess: ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("Invalid input. Please enter a number.");
      continue;
    }

    guess = int.tryParse(input);
    if (guess == null) {
      print("Invalid input. Please enter a valid number.");
      continue;
    }

    attempts++;

    if (guess < targetNumber) {
      print(" I appreciate your guess but not too low think high and sucess");
    } else if (guess > targetNumber) {
      print(" You are almost on the way to ur guess dont go high think low ");
    } else {
      print("Finally Gussed  in $attempts attempts.");
      break;
    }
  }
}
