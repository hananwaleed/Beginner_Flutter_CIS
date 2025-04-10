import 'rectangle.dart';
import 'triangle.dart';

void main() {
  rectangle r1 = rectangle(10, 5);
  Triangle t1 = Triangle(10, 5);

  print("triangle area :${r1.area()} ");
  print("rectangle area :${t1.area()} ");
}
