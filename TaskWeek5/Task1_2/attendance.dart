import 'student.dart';
import 'course.dart';

class Attendance {
  int attendanceId;
  Student student;
  Course course;
  DateTime date;
  String status;

  Attendance(this.attendanceId, this.student, this.course, this.date, this.status);

  @override
  String toString() {
    return "Attendance Info:\n"
        "Attendance ID: $attendanceId\n"
        "Student: ${student.name}\n"
        "Course: ${course.name}\n"
        "Date: $date\n"
        "Status: $status\n";
  }
}
