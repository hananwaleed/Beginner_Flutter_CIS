import 'employee.dart';
import 'project.dart';

class Client {
  String name;
  String email;
  String phone;
  String industry;
  List<Project> projects = [];

  Client(this.name, this.email, this.phone, this.industry);

  void requestService(Service service) {
    print("Client $name requested service: ${service.name}");
  }

  List<Project> getProjects() => projects;
}