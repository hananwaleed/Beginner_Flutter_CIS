class PaymentMethod {
  final int id;
  final int customerId;
  final String methodType; 
  final String details; 

  PaymentMethod({
    required this.id,
    required this.customerId,
    required this.methodType,
    required this.details,
  });
}
