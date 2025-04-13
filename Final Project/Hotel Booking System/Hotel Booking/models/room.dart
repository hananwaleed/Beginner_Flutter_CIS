class Room {
  int idRoom;
  int hotelId;
  String type;
  double pricePerNight;
  bool isAvailable;
  int capacity;
  List<String> amenities; 

  Room({
    required this.idRoom,
    required this.hotelId,
    required this.type,
    required this.pricePerNight,
    required this.isAvailable,
    required this.capacity,
    required this.amenities,
  });


  @override
  String toString() {
    return 'Room $idRoom: $type, Price: \$${pricePerNight.toStringAsFixed(2)}, Capacity: $capacity';
  }
}
