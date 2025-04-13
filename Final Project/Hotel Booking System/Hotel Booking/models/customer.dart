class Customer {
  final int id;
  final String name;
  final String phone;
  final String email;
  final String address;
  final DateTime dateOfBirth; 
  final String membershipStatus;

  Customer({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.address,
    required this.dateOfBirth,
    required this.membershipStatus, 
  });
}
