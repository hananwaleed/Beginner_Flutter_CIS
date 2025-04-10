import 'dart:io';

void main() {
  print("enter a list");
  List a = [];
  for (int i = 0; i < 5; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }

  numbers(a);
}

List numbers(List numbers1) {
  List numbers2 = [];
  for (var i = 0; i < numbers1.length; i++) {
    if (numbers1[i] == numbers1[0] ||
        numbers1[i] == numbers1[numbers1.length - 1]) {
      numbers2.add(numbers1[i]);
    }
  }
  print(numbers2);
  return numbers2;
}

