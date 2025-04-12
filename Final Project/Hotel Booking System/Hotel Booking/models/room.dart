class Room {
  final int idRoom;
  final int hotelId;
  final String type;
  final double pricePerNight;
  final bool isAvailable;
  final int capacity;
  final List<String> amenities;

  Room({
    required this.idRoom,
    required this.hotelId,
    required this.type,
    required this.pricePerNight,
    required this.isAvailable,
    required this.capacity,
    required this.amenities,
  });
}
