
import 'dart:io';

void main() {
  print("Enter The Name ");
  String name = stdin.readLineSync()!;
  print(" Enter The Age ");
  int Age = int.parse(stdin.readLineSync()!);
  int Result = 100 - Age;
  print("Name :$name");
  print("years they have to be 100 years old:$Result");
}
