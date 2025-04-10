import 'student.dart';
import 'course.dart';

class Enrollment {
  int id;
  Student student;
  Course course;
  String semester;
  Enrollment(this.id, this.student, this.course, this.semester);

    @override
  String toString() {
    return "Enrollment Info:\n"
        "Enrollment ID: $id\n"
        "Student: ${student.name}\n"
        "Course: ${course.name}\n"
        "Semester: $semester\n";
  }
}
