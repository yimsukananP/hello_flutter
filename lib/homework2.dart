import 'dart:io';
import 'dart:math';
// ignore_for_file: avoid_print
void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1;
  var count = 0;
  var isCorrect = false;

  do {
    stdout.write('Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();

    if (input == null) {
      print('Error, input is NULL');
      return;
    }
    var guess = int.tryParse(input);

    if (guess == null) {
      continue;
    }
    count++;
    if (guess == answer) {
      print('CORRECT! The answer is $answer total guesses: $count ');
      isCorrect = true;
    } else if (guess > answer) {


      print('$guess TOO HIGH');
    } else {
      print('$guess TOO LOW');
    }
  } while (!isCorrect);
}
