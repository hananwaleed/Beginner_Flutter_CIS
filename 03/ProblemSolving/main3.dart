import 'dart:math';
import 'dart:io';

String generatePassword(int length) {
  const String lowercase = 'abcdefghijklmnopqrstuvwxyz';
  const String uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String numbers = '0123456789';
  const String symbols = '!@#\$%^&*()-_=+[]{}|;:,.<>?/';
  final String chars = lowercase + uppercase + numbers + symbols;
  final Random random = Random();

  return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();
}

void main() {
  stdout.write('Enter desired password length: ');
  int length = int.tryParse(stdin.readLineSync() ?? '')!;
  
  if (length <= 0) {
    print('Invalid length. Please enter a positive number.');
    return;
  }
  
  print('Generated Password: ${generatePassword(length)}');
}
