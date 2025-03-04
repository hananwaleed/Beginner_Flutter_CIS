import 'dart:io';

void main() {
  print("Enter The number ");
  int number = int.parse(stdin.readLineSync()!);
  
  if (number % 2 == 0) {
    print("the Number Is Even");
  } else {
    print("The Number Not Even");
  }
}
