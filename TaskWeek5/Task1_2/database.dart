

import 'attendance.dart';
import 'course.dart';
import 'enrollment.dart';
import 'teacher.dart';
import 'student.dart';

class Database {
  List<Student> students = [];
  List<Attendance> attendanceRecords = [];
  List<Course> courses = [];
  List<Enrollment> enrollments = [];

  void addStudent(int studentId, String name, String email, String phone,
      String address, String dateOfBirth) {
    Student newStudent =
        Student(studentId, name, email, phone, address, dateOfBirth);
    students.add(newStudent);
    print("Student added successfully: ${newStudent.name}");
  }

  void showStudents() {
    if (students.isEmpty) {
      print("No students registered.");
    } else {
      print("List of students:");
      for (var student in students) {
        print(student);
      }
    }
  }

  void addCourse(int courseId, String name, int credits, Teacher teacher) {
    Course newCourse = Course(courseId, name, credits, teacher);
    courses.add(newCourse);
    print("Course added successfully: ${newCourse.name}");
  }

  void showCourses() {
    if (courses.isEmpty) {
      print("No courses available.");
    } else {
      print("List of courses:");
      for (var course in courses) {
        print(course);
      }
    }
  }
  void addEnrollment(int enrollmentId, Student student, Course course, String semester) {
    Enrollment newEnrollment = Enrollment(enrollmentId, student, course, semester);
    enrollments.add(newEnrollment);
    print("Enrollment added successfully for student: ${student.name} in course: ${course.name}");
  }
  void showEnrollments() {
    if (enrollments.isEmpty) {
      print("No enrollments found.");
    } else {
      print("List of enrollments:");
      for (var enrollment in enrollments) {
        print(enrollment);
      }
    }
  }
    void removeStudent(int studentId) {
    students.removeWhere((s) => s.id == studentId);
    print("Student with ID $studentId removed.");
  }
  void removeCourse(int courseId) {
    courses.removeWhere((c) => c.id == courseId);
    print(" Course with ID $courseId removed.");
  }

  
  void removeEnrollment(int studentId, int courseId) {
    enrollments.removeWhere((e) => e.student.id  == studentId && e.course.id == courseId);
    print(" Enrollment removed: Student ID $studentId from Course ID $courseId.");
  }

  void markAttendance(int id, Student student, Course course, String status) {
    Attendance newAttendance = Attendance(id, student, course, DateTime.now(), status);
    attendanceRecords.add(newAttendance);
    print("✅ Attendance recorded for ${student.name} in ${course.name} - Status: $status");
  }
  void addAttendance(int attendanceId, Student student, Course course, DateTime date, String status) {
  Attendance newAttendance = Attendance(attendanceId, student, course, date, status);
  attendanceRecords.add(newAttendance);
  print("Attendance recorded: ${student.name} - ${course.name} - $status");
}
    void showAttendance() {
    if (attendanceRecords.isEmpty) {
      print("No attendance records found");
    } else {
      print("Attendance Records:");
      for (var record in attendanceRecords) {
        print(record);
      }
    }
  }
    void removeAttendance(int id) {
    attendanceRecords.removeWhere((a) => a.id == id);
    print(" Attendance record with ID $id removed.");
  }
  void getStudentAttendance(int studentId) {
  var studentAttendance = attendanceRecords.where((a) => a.student.id == studentId).toList();
  if (studentAttendance.isEmpty) {
    print(" No attendance records found for student ID: $studentId");
  } else {
    print(" Attendance for Student ID: $studentId");
    for (var record in studentAttendance) {
      print(record);
    }
  }
}
void calculateAttendancePercentage(int studentId) {
  var studentAttendance = attendanceRecords.where((a) => a.student.id == studentId).toList();
  if (studentAttendance.isEmpty) {
    print("No attendance records found for student ID: $studentId");
    return;
  }

  int totalClasses = studentAttendance.length;
  int attendedClasses = studentAttendance.where((a) => a.status == "Present").length;
  
  double percentage = (attendedClasses / totalClasses) * 100;
  print("Student ID: $studentId - Attendance Percentage: ${percentage.toStringAsFixed(2)}%");
}

}

