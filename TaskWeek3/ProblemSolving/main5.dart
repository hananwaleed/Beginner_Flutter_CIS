
void main() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  List<int> EvenNumbers = a.where((num) => num.isEven).toList();

  print(" Even Numbers is $EvenNumbers");
}