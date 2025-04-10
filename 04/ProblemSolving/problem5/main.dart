import 'client.dart';
import 'employee.dart';

void main() {
 
  Client client = Client("hanan waleed", "waleedhanan81@gmail.com", "01280292678", "E-commerce");
  Service service = Service(1, "Social Media Marketing", "Manage social media campaigns", 1500.0);
  client.requestService(service);
}
