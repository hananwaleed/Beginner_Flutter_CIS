import 'dart:io';


void main() {
  List a = [];
  for (int i = 0; i < 5; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }
  min_max(a);
}

void min_max(List nums) {
  int max = nums[0];
  int min = nums[0];
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] > max) {
      max = nums[i];
    }
    if (nums[i] < min) {
      min = nums[i];
    }
 
  }
     print("max number is :$max");
    print("min number is :$min");
}
