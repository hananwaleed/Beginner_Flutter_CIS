class Student {
  int studentId;
  String name;
  String email;
  String phone;
  String address;
  String dateOfBirth;

  Student(this.studentId, this.name, this.email, this.phone, this.address,
      this.dateOfBirth);
  @override
  String toString() {
    return "Student Info\n"
        "Id:$studentId\n"
        "Name:$name\n"
        "Email:$email\n"
        "Phone:$phone\n"
        "Address:$address\n"
        "DateOfBirth:$dateOfBirth\n";
  }
}
