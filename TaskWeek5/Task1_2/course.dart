import 'teacher.dart';

class Course {
  int courseId;
  String name;
  int credits;
  Teacher teacher;
  Course(this.courseId, this.name, this.credits, this.teacher);

    @override
  String toString() {
    return "Course Info:\n"
        "Course ID: $courseId\n"
        "Name: $name\n"
        "Credits: $credits\n"
        "Teacher: ${teacher.name}\n";
  }
}
