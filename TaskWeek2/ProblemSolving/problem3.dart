import 'dart:io';

void main() {
  print("Enter A Number");
  int Number = int.parse(stdin.readLineSync()!);
  print("Divisors of $Number:");
  for (int i = 1; i <= Number; i++) {
    if (Number%i == 0) {
      print(i);
    }
  }
}
