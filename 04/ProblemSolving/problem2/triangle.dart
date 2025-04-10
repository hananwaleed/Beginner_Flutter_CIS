import 'shape.dart';

class Triangle extends Shape {
  Triangle(double width, double height) : super(width, height);
  @override
  double area() {
    return 0.5 * width * height;
  }
}
