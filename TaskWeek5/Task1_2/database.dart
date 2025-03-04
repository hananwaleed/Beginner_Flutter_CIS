import 'course.dart';
import 'enrollment.dart';
import 'student.dart';
import 'teacher.dart';

class Database {
  List<Student> students = [];

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

  List<Course> courses = [];

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

  List<Enrollment> enrollments = [];
  
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
}
