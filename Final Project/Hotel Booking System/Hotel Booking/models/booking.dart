class Booking {
  final int id;
  final int guestId;
  final int roomId;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  final double totalPrice;
  final String status; 

  Booking({
    required this.id,
    required this.guestId,
    required this.roomId,
    required this.checkInDate,
    required this.checkOutDate,
    required this.totalPrice,
    required this.status,
  });
}
