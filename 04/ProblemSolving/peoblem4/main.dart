import 'dolphin.dart';
import 'zebra.dart';

void main() {
  Zebra zebra = Zebra();
  zebra.set_value("Marty", 5);
  zebra.display();
  Dolphin dolphin = Dolphin();
  dolphin.set_value("flipper", 8);
  dolphin.display();
}
