import 'teacher.dart';

class Course {
  int id;
  String name;
  int credits;
  Teacher teacher;
  Course(this.id, this.name, this.credits, this.teacher);

    @override
  String toString() {
    return "Course Info:\n"
        "Course ID: $id\n"
        "Name: $name\n"
        "Credits: $credits\n"
        "Teacher: ${teacher.name}\n";
  }
}
