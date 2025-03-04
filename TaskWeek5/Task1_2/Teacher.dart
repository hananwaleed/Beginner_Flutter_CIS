class Teacher {
  int teacherId;
  String name;
  String email;
  String phone;
  String Depatment;
  Teacher(this.teacherId, this.name, this.email, this.phone, this.Depatment);
@override
  String toString() {
    return "Teacher Info\n"
        "TeacherId:$teacherId\n"
        "Name:$name\n"
        "Phone:$phone\n"
        "Depatment:$Depatment\n";
  }
}
