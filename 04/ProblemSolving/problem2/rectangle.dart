import 'shape.dart';

class rectangle extends Shape {
  rectangle(double width, double height) : super(width, height);

   @override
  double area() {
    return width * height;
  }
}
