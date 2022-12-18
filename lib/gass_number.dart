import 'dart:io';
import 'game.dart';

// ignore_for_file: avoid_print
void main() {
  var g = Game();
  // class game enum
  late GuessResult guessResult;
  print('┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  print('│                      enter                        │');
  do {
    stdout.write('Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();

    var guess = int.tryParse(input!);

    if (guess == null) {
      continue;
    }
    guessResult = g.doGuess(guess);
    if (guessResult == GuessResult.correct) {
      //getter ไม่มีวงเล็บ
      print('CORRECT! The answer is ${g.answer} total guesses: ${g.TotalGuess}');
    } else if (guessResult == GuessResult.tooHigh) {
      print('$guess TOO HIGH');
    } else {
      print('$guess TOO LOW');
    }
  } while (guessResult != GuessResult.correct);
}
