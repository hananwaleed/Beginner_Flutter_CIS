import '../models/booking.dart';
import '../models/customer.dart';
import '../models/guest.dart';
import '../models/paymentMethod.dart';
import '../models/room.dart';
import '../models/staff.dart';

class BookingService {
  List<Booking> _bookings = [];
  List<Customer> _customers = [];
  List<Guest> _guests = [];
  List<Room> _rooms = [];
  List<PaymentMethod> _paymentMethods = [];
  List<Staff> _staffs = [];

  bool checkRoomAvailability(int roomId, DateTime checkIn, DateTime checkOut) {
    var room = _rooms.firstWhere((r) => r.idRoom == roomId, orElse: () => Room(idRoom: -1, hotelId: -1, type: '', pricePerNight: 0, isAvailable: false, capacity: 0, amenities: []));
    if (!room.isAvailable) return false;

    for (var booking in _bookings) {
      if (booking.roomId == roomId && booking.status != 'cancelled') {
        if (checkIn.isBefore(booking.checkOutDate) && checkOut.isAfter(booking.checkInDate)) {
          return false;
        }
      }
    }
    return true;
  }

  void createBooking({
    required int guestId,
    required int roomId,
    required DateTime checkIn,
    required DateTime checkOut,
    required String paymentMethod,
    required String paymentDetails,
    int? customerId,
    int? assignedStaffId,
  }) {
    try {
      if (!checkRoomAvailability(roomId, checkIn, checkOut)) {
        throw Exception("Room is not available for the selected dates.");
      }

      var guest = _guests.firstWhere((g) => g.id == guestId);
      var room = _rooms.firstWhere((r) => r.idRoom == roomId);

      int nights = checkOut.difference(checkIn).inDays;
      double totalPrice = nights * room.pricePerNight;

 
      var payment = PaymentMethod(
        id: _paymentMethods.isEmpty ? 1 : _paymentMethods.last.id + 1,
        customerId: customerId ?? guestId,
        methodType: paymentMethod,
        details: paymentDetails,
      );
      _paymentMethods.add(payment);


      var booking = Booking(
        id: _bookings.isEmpty ? 1 : _bookings.last.id + 1,
        guestId: guest.id,
        roomId: roomId,
        checkInDate: checkIn,
        checkOutDate: checkOut,
        totalPrice: totalPrice,
        status: 'confirmed',
        paymentStatus: 'Confirmed',  
      );
      _bookings.add(booking);

      if (assignedStaffId != null) {
        var staff = _staffs.firstWhere((s) => s.id == assignedStaffId);
        print("🛎️ Booking assigned to staff: ${staff.name} (${staff.role})");
      }

      print("✅ Booking #${booking.id} created successfully for guest: ${guest.fullName}");
      print("   Room: ${room.type}, ${nights} nights, Total: \$${totalPrice.toStringAsFixed(2)}");
    } catch (e) {
      print("❌ Error creating booking: ${e.toString()}");
    }
  }

  void cancelBooking(int bookingId, {String? cancellationReason}) {
    try {
      var bookingIndex = _bookings.indexWhere((b) => b.id == bookingId);
      if (bookingIndex == -1) throw Exception("Booking not found.");

      var booking = _bookings[bookingIndex];
      var updatedBooking = Booking(
        id: booking.id,
        guestId: booking.guestId,
        roomId: booking.roomId,
        checkInDate: booking.checkInDate,
        checkOutDate: booking.checkOutDate,
        totalPrice: booking.totalPrice,
        status: "cancelled",
        paymentStatus: booking.paymentStatus, 
      );
      _bookings[bookingIndex] = updatedBooking;

      print("✅ Booking #$bookingId has been cancelled." +
            (cancellationReason != null ? " Reason: $cancellationReason" : ""));
    } catch (e) {
      print("❌ Error cancelling booking: ${e.toString()}");
    }
  }

  List<Booking> getBookingsByGuest(int guestId, {bool includeCancelled = false}) {
    return _bookings.where((booking) =>
      booking.guestId == guestId &&
      (includeCancelled || booking.status != 'cancelled')
    ).toList();
  }

  List<Booking> getAllBookings({String? statusFilter}) {
    if (statusFilter == null) return _bookings;
    return _bookings.where((b) => b.status == statusFilter).toList();
  }

  void updateBookingStatus(int bookingId, String newStatus, {int? staffId}) {
    try {
      var bookingIndex = _bookings.indexWhere((b) => b.id == bookingId);
      if (bookingIndex == -1) throw Exception("Booking not found.");

      var booking = _bookings[bookingIndex];
      var updatedBooking = Booking(
        id: booking.id,
        guestId: booking.guestId,
        roomId: booking.roomId,
        checkInDate: booking.checkInDate,
        checkOutDate: booking.checkOutDate,
        totalPrice: booking.totalPrice,
        status: newStatus,
        paymentStatus: booking.paymentStatus, 
      );
      _bookings[bookingIndex] = updatedBooking;

      String logMessage = "✅ Booking #$bookingId status updated to $newStatus.";
      if (staffId != null) {
        var staff = _staffs.firstWhere((s) => s.id == staffId);
        logMessage += " By staff: ${staff.name}";
      }
      print(logMessage);
    } catch (e) {
      print("❌ Error updating booking status: ${e.toString()}");
    }
  }

  void addRoom(Room room) {
    try {
      if (_rooms.any((r) => r.idRoom == room.idRoom)) {
        throw Exception("Room ID already exists");
      }
      _rooms.add(room);
      print("✅ Room added: ${room.idRoom}, Type: ${room.type}, " +
            "Capacity: ${room.capacity}, Price: \$${room.pricePerNight}/night");
      print("   Amenities: ${room.amenities.join(', ')}");
    } catch (e) {
      print("❌ Error adding room: ${e.toString()}");
    }
  }

  void addGuest(Guest guest) {
    try {
      if (_guests.any((g) => g.id == guest.id)) {
        throw Exception("Guest ID already exists");
      }
      if (_guests.any((g) => g.idNumber == guest.idNumber)) {
        throw Exception("ID Number already registered");
      }
      _guests.add(guest);
      print("✅ Guest added: ${guest.fullName}, ID: ${guest.idNumber}");
      print("   Nationality: ${guest.nationality}, Contact: ${guest.phoneNumber} | ${guest.email}");
    } catch (e) {
      print("❌ Error adding guest: ${e.toString()}");
    }
  }

  void addCustomer(Customer customer) {
    try {
      if (_customers.any((c) => c.id == customer.id)) {
        throw Exception("Customer ID already exists");
      }
      _customers.add(customer);
      print("✅ Customer added: ${customer.name}");
      print("   Address: ${customer.address}, Contact: ${customer.phone} | ${customer.email}");
    } catch (e) {
      print("❌ Error adding customer: ${e.toString()}");
    }
  }

  void addStaff(Staff staff) {
    try {
      if (_staffs.any((s) => s.id == staff.id)) {
        throw Exception("Staff ID already exists");
      }
      _staffs.add(staff);
      print("✅ Staff added: ${staff.name}, Role: ${staff.role}");
      print("   Hire Date: ${staff.hireDate}, Shift: ${staff.shift}");
      print("   Contact: ${staff.contactInfo}");
    } catch (e) {
      print("❌ Error adding staff: ${e.toString()}");
    }
  }

  List<Room> getAvailableRooms(DateTime checkIn, DateTime checkOut, {int? requiredCapacity}) {
    return _rooms.where((room) {
      bool capacityOk = requiredCapacity == null || room.capacity >= requiredCapacity;
      return room.isAvailable &&
             capacityOk &&
             checkRoomAvailability(room.idRoom, checkIn, checkOut);
    }).toList();
  }

  List<Guest> searchGuests({String? name, String? nationality, String? idNumber}) {
    return _guests.where((guest) {
      bool nameMatch = name == null || guest.fullName.toLowerCase().contains(name.toLowerCase());
      bool nationalityMatch = nationality == null || guest.nationality.toLowerCase().contains(nationality.toLowerCase());
      bool idMatch = idNumber == null || guest.idNumber.contains(idNumber);
      return nameMatch && nationalityMatch && idMatch;
    }).toList();
  }

  List<Staff> getStaffByRole(String role) {
    return _staffs.where((staff) => staff.role.toLowerCase() == role.toLowerCase()).toList();
  }
}
