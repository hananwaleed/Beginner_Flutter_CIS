import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int numberToGuess = random.nextInt(100) + 1; 
  int attempts = 0;
  const int maxAttempts = 7;

  print("Guess a number between 1 and 100");

  while (attempts < maxAttempts) {
    print("Enter your guess: ");
    String input = stdin.readLineSync()!;

    if ( int.tryParse(input) == null) {
      print("Invalid input Please enter a valid number");
      continue; 
    }

    int guess = int.parse(input);
    attempts++;

    if (guess < numberToGuess) {
      print("Too low Try again");
    } else if (guess > numberToGuess) {
      print("Too high Try again");
    } else {
      print("Congratulations You guessed the number in $attempts attempts");
      return; 
    }
  }

  print("Sorry! You've used all your attempts The number was $numberToGuess.");
}
