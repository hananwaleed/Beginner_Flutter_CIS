import 'dart:io';
import 'package:hangman/class/HangmanGame.dart';

void main(){

 print('🎮 Welcome to Hangman! 🎮');
HangmanGame game = HangmanGame(); // بنعمل Object من اللعبة

game.printWordState(); // بنعرض حالة الكلمة أول مرة


while (game.attempts > 0 && !game.isWordGuessed()) {
    stdout.write('\n🔤 Enter a letter: '); // بنطلب من اللاعب يدخل حرف
    String? input = stdin.readLineSync()?.toLowerCase(); // ناخد الإدخال ونخليه lowercase

    if (input != null && input.isNotEmpty) {
      game.guessLetter(input);
    } else {
      print('❌ Please enter a valid letter.');
    }
  }
}