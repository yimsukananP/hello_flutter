import 'dart:math';
enum GuessResult{
  correct,tooHigh,tooLow
}
class Game {
  final int answer;
 //enmuration deside datatype

  //final int answer = Random().nextInt(100)+1;
  final String name;

  //late int x;
  // ไม่ต้องการให้ภายนอกเปลี่ยนเเปลงค่า privet
  int _totalGuess = 0;

  Game()
      : answer = Random().nextInt(100) + 1,
        name = 'pongsakorn' {
    // x =1;
    // final can't declend;
  }

  GuessResult doGuess(int guess) {
    _totalGuess++;
    if (guess == answer) {
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }
  }

  // getter
  // ignore: non_constant_identifier_names
  int get TotalGuess {
    return _totalGuess;
  }
}
