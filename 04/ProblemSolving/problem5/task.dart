import 'employee.dart';

class Task {
  int id;
  String title;
  Employee assignedTo;
  DateTime dueDate;
  String status;

  Task(this.id, this.title, this.assignedTo, this.dueDate, this.status);

  void markComplete() => status = "Completed";
  void changeAssignee(Employee employee) => assignedTo = employee;
}