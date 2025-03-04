import 'dart:io';

void main() {
  print("Enter String");
  String input = stdin.readLineSync()!;
  String reversed = input.split('').reversed.join('');

  if (input == reversed) {
    print("String is Palindrome");
  } else {
    print(" String Not Palindrome");
  }
}
