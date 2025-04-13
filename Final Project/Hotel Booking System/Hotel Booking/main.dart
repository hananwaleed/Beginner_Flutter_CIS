import 'dart:io';
import '../Hotel Booking/models/customer.dart';
import '../Hotel Booking/models/guest.dart';
import '../Hotel Booking/models/room.dart';
import '../Hotel Booking/models/staff.dart';
import '../Hotel Booking/services/bookingService.dart';

void main() {
  var bookingService = BookingService();


  print("Enter staff details:");

  print("Enter Staff Name: ");
  String staffName = stdin.readLineSync() ?? '';
  print("Enter Staff Role: ");
  String staffRole = stdin.readLineSync() ?? '';
  print("Enter Staff Shift (e.g., Morning, Evening): ");
  String staffShift = stdin.readLineSync() ?? '';
  print("Enter Staff Contact Info (e.g., email): ");
  String staffContact = stdin.readLineSync() ?? '';

  var staff = Staff(
    id: 1,
    name: staffName,
    role: staffRole,
    hireDate: DateTime.now(),
    shift: staffShift,
    contactInfo: staffContact,
    salary: 5555.55,
    department: "Front Desk"
  );
  bookingService.addStaff(staff);

 
  print("\nEnter room details:");

  print("Enter Room ID: ");
  int roomId = int.parse(stdin.readLineSync() ?? '0');
  print("Enter Room Type (e.g., Single, Double): ");
  String roomType = stdin.readLineSync() ?? '';
  print("Enter Room Price per Night: ");
  double roomPrice = double.parse(stdin.readLineSync() ?? '0');
  print("Enter Room Capacity: ");
  int roomCapacity = int.parse(stdin.readLineSync() ?? '0');

  var room = Room(
    idRoom: roomId,
    hotelId: 1,
    type: roomType,
    pricePerNight: roomPrice,
    isAvailable: true,
    capacity: roomCapacity,
    amenities: ['TV', 'Wi-Fi'],
  );
  bookingService.addRoom(room);


  print("\nEnter customer details:");

  print("Enter Customer Name: ");
  String customerName = stdin.readLineSync() ?? '';
  print("Enter Customer Address: ");
  String customerAddress = stdin.readLineSync() ?? '';
  print("Enter Customer Phone: ");
  String customerPhone = stdin.readLineSync() ?? '';
  print("Enter Customer Email: ");
  String customerEmail = stdin.readLineSync() ?? '';
  print("Enter Customer Date of Birth (YYYY-MM-DD): ");
  DateTime customerDOB = DateTime.parse(stdin.readLineSync() ?? '2000-01-01');
  print("Enter Customer Membership Status: ");
  String membershipStatus = stdin.readLineSync() ?? '';

  var customer = Customer(
    id: 1,
    name: customerName,
    address: customerAddress,
    phone: customerPhone,
    email: customerEmail,
    dateOfBirth: customerDOB,
    membershipStatus: membershipStatus
  );
  bookingService.addCustomer(customer);


  print("\nEnter guest details:");

  print("Enter Guest Full Name: ");
  String guestName = stdin.readLineSync() ?? '';
  print("Enter Guest Nationality: ");
  String guestNationality = stdin.readLineSync() ?? '';
  print("Enter Guest Phone Number: ");
  String guestPhone = stdin.readLineSync() ?? '';
  print("Enter Guest Email: ");
  String guestEmail = stdin.readLineSync() ?? '';
  print("Enter Guest ID Number: ");
  String guestIdNumber = stdin.readLineSync() ?? '';
  print("Enter Guest Passport Number: ");
  String guestPassportNumber = stdin.readLineSync() ?? '';

  var guest = Guest(
    id: 1,
    fullName: guestName,
    nationality: guestNationality,
    phoneNumber: guestPhone,
    email: guestEmail,
    idNumber: guestIdNumber,
    passportNumber: guestPassportNumber,
  );
  bookingService.addGuest(guest);


  print("\nEnter booking details:");

  print("Enter Check-in Date (YYYY-MM-DD): ");
  DateTime checkIn = DateTime.parse(stdin.readLineSync() ?? '2025-05-01');
  print("Enter Check-out Date (YYYY-MM-DD): ");
  DateTime checkOut = DateTime.parse(stdin.readLineSync() ?? '2025-05-05');
  print("Enter Payment Method (e.g., Credit Card): ");
  String paymentMethod = stdin.readLineSync() ?? '';
  print("Enter Payment Details (e.g., Card Number): ");
  String paymentDetails = stdin.readLineSync() ?? '';

  print("\nCreating booking...");
  if (bookingService.checkRoomAvailability(room.idRoom, checkIn, checkOut)) {
    bookingService.createBooking(
      guestId: guest.id,
      roomId: room.idRoom,
      checkIn: checkIn,
      checkOut: checkOut,
      paymentMethod: paymentMethod,
      paymentDetails: paymentDetails,
      customerId: customer.id,
      assignedStaffId: staff.id,
    );
  } else {
    print("❌ The room is not available for the selected dates.");
  }

  var bookings = bookingService.getBookingsByGuest(guest.id);
  print('\nBookings for guest:');
  bookings.forEach((b) {
    print('Booking #${b.id} from ${b.checkInDate} to ${b.checkOutDate}');
  });


  print("\nUpdating booking status...");
  print("Enter new booking status (e.g., completed, cancelled): ");
  String newStatus = stdin.readLineSync() ?? '';
  bookingService.updateBookingStatus(1, newStatus, staffId: staff.id);

 
  print("\nCancelling booking...");
  print("Enter cancellation reason: ");
  String cancellationReason = stdin.readLineSync() ?? '';
  bookingService.cancelBooking(1, cancellationReason: cancellationReason);
}
