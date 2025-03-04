import 'Student.dart';
import 'course.dart';

class Enrollment {
  int enrollmentId;
  Student student;
  Course course;
  String semester;
  Enrollment(this.enrollmentId, this.student, this.course, this.semester);

    @override
  String toString() {
    return "Enrollment Info:\n"
        "Enrollment ID: $enrollmentId\n"
        "Student: ${student.name}\n"
        "Course: ${course.name}\n"
        "Semester: $semester\n";
  }
}
