class PaymentMethod {
  int id;
  int customerId;
  String methodType; 
  String details;  

  PaymentMethod({
    required this.id,
    required this.customerId,
    required this.methodType,
    required this.details,
  });


  @override
  String toString() {
    return 'PaymentMethod $id: Customer ID $customerId, Type: $methodType, Details: $details';
  }
}
