import 'database.dart';
import 'student.dart';
import 'teacher.dart';


void main() {
  Database db = Database();

  Teacher teacher1 = Teacher(1, "Dr. Ahmed", "ahmed@example.com", "01122334455", "Computer Science");
  Teacher teacher2 = Teacher(2, "Dr. Sara", "sara@example.com", "0123456789", "Software Engineering");
  Teacher teacher3 = Teacher(3, "Dr. Hossam", "hossam@example.com", "01011223344", "Artificial Intelligence");

  db.addCourse(101, "Flutter Development", 3, teacher1);
  db.addCourse(102, "Data Structures", 4, teacher2);
  db.addCourse(103, "Machine Learning", 3, teacher3);

  db.addStudent(1, "Hanan Waleed", "hanan@example.com", "0123456789", "Cairo", "2000-01-01");
  db.addStudent(2, "Ali Mohamed", "ali@example.com", "0109876543", "Alex", "1999-05-15");
  db.addStudent(3, "Mariam Hassan", "mariam@example.com", "01155667788", "Giza", "2001-07-20");
  db.addStudent(4, "Omar Khaled", "omar@example.com", "01522334455", "Asyut", "1998-11-30");

  Student student1 = db.students[0];
  Student student2 = db.students[1];
  Student student3 = db.students[2];
  Student student4 = db.students[3];

  db.addEnrollment(1, student1, db.courses[0], "Spring 2025");
  db.addEnrollment(2, student2, db.courses[1], "Spring 2025");
  db.addEnrollment(3, student3, db.courses[2], "Spring 2025");
  db.addEnrollment(4, student4, db.courses[0], "Spring 2025");
  db.addEnrollment(5, student1, db.courses[2], "Spring 2025");
  db.addEnrollment(6, student3, db.courses[1], "Spring 2025");

  db.addAttendance(1, student1, db.courses[0], DateTime(2025, 3, 1), "Present");
  db.addAttendance(2, student2, db.courses[1], DateTime(2025, 3, 1), "Absent");
  db.addAttendance(3, student3, db.courses[2], DateTime(2025, 3, 1), "Late");
  db.addAttendance(4, student4, db.courses[0], DateTime(2025, 3, 1), "Present");
  db.addAttendance(5, student1, db.courses[2], DateTime(2025, 3, 2), "Absent");
  db.addAttendance(6, student3, db.courses[1], DateTime(2025, 3, 2), "Present");

  print("\nStudents:");
  db.showStudents();

  print("\nCourses:");
  db.showCourses();

  print("\nEnrollments:");
  db.showEnrollments();

  print("\nAttendance:");
  db.showAttendance();

  db.removeStudent(4);
  db.removeCourse(103);
  db.removeEnrollment(1, 101);
  db.removeAttendance(2);

  print("\nAfter Deletions:");
  db.showStudents();
  db.showCourses();
  db.showEnrollments();
  db.showAttendance();
}
