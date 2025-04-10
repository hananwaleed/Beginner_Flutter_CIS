import 'client.dart';
import 'employee.dart';
import 'task.dart';

class Project {
  int id;
  String name;
  Client client;
  String status;
  List<Employee> team = [];
  List<Task> tasks = [];
  double budget;

  Project(this.id, this.name, this.client, this.status, this.budget);

  void addTask(Task task) => tasks.add(task);
  void assignTeam(List<Employee> team) => this.team = team;
  void updateStatus(String newStatus) => status = newStatus;
}