
import 'dart:math';

class HangmanGame {
  final String secretWord; // الحروف اللي اللاعب المفروض يخمنها
  List<String> guessedLetters = []; // الحروف اللي اللاعب جربها
  int attempts; // المحاولات المتبقية

  static final List<String> wordList = [
    "flutter",
    "dart",
    "widget",
    "state",
    "provider"
  ]; // ليست كلمات عشان نختار منها عشوائيًا

  // Constructor
  HangmanGame({this.attempts = 6})
      : secretWord = wordList[Random().nextInt(wordList.length)]; // بتختار كلمة عشوائية

  // بنطبع الكلمه
  void printWordState() {
    String displayWord = secretWord.split('').map((letter) {
      return guessedLetters.contains(letter) ? letter : '_';
    }).join(' ');

    print('\nWord: $displayWord'); //بنطبع الكلمة بالحروف الصح 
  }

  
  void guessLetter(String letter) {
    if (letter.isEmpty || letter.length > 1) {
      // بنتشك لو اللاعب دخل حرف مش صح 
      print('❌ Please enter a single valid letter.');
      return;
    }

    if (guessedLetters.contains(letter)) {
      // هنا بنتشك لو الحرف ده موجود ف بنقوله ان الحرف موجود
      print('⚠️ You have already guessed "$letter". Try another letter.');
      return;
    }

    guessedLetters.add(letter); // هنا بنضيف الحرف

    if (secretWord.contains(letter)) {
      // هنا بنتشك لو الحرف موجود في الكلمة
      print('✅ Correct! The letter "$letter" is in the word.');
    } else {
      attempts--; // بنقلل عدد المحاولات
      print('❌ Incorrect! Attempts left: $attempts'); // بنطبع مسدج انه غلط
    }

    printWordState(); // هنا بنطبع آخر مرحلة وصلنا ليها

    if (isWordGuessed()) {
      print('\n🎉 Congratulations! You guessed the word: $secretWord 🎉'); // هنا لو اللاعب خمن الكلمة صح
    } else if (attempts == 0) {
      print('\n💀 Game Over! The word was: $secretWord 💀'); // هنا لو اللاعب خسر
    }
  }


  bool isWordGuessed() {
    return secretWord.split('').every((letter) => guessedLetters.contains(letter));
  }
}
