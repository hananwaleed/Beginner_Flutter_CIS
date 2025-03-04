
import 'database.dart';
import 'teacher.dart';

void main() {
  Database db = Database();
  Teacher teacher1 = Teacher(
      1, "hanan waleed", "waleedhanan81@gmail.com", "01280292678", "Math");
  db.addCourse(101, "Algebra", 3, teacher1);

  db.addStudent(2, "eman waleed", "waleedeman81@gmail.com", "01201960323",
      "EL Manzala", "11/11/2005");

  db.showCourses();
  db.showStudents();
}
