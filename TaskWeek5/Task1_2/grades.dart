import 'student.dart';
import 'course.dart';

class Grades {
  int gradeId;
  Student student;
  Course course;
  double grade;

  Grades(this.gradeId, this.student, this.course, this.grade);

  @override
  String toString() {
    return "Grade Info:\n"
        "Grade ID: $gradeId\n"
        "Student: ${student.name}\n"
        "Course: ${course.name}\n"
        "Grade: $grade\n";
  }
}
