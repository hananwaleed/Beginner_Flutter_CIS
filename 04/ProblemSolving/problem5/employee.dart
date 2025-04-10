import 'task.dart';

class Employee {
  int id;
  String name;
  String role;
  String email;
  List<Task> tasks = [];

  Employee(this.id, this.name, this.role, this.email);

  void assignTask(Task task) => tasks.add(task);
  List<Task> getAssignedTasks() => tasks;
}

// Service class
class Service {
  int id;
  String name;
  String description;
  double price;

  Service(this.id, this.name, this.description, this.price);

  String getDetails() => "$name: $description ($price USD)";
}