class Hotel {
  final int idHotel;
  final String nameHotel;
  final String locationHotel;
  final double rating;
  final List<int> roomIds;

  Hotel({
    required this.idHotel,
    required this.nameHotel,
    required this.locationHotel,
    required this.rating,
    required this.roomIds,
  });
}
