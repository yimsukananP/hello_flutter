// ignore_for_file: avoid_print

import 'dart:math';

// enumeration
enum GuessResult { correct, tooHigh, tooLow }

class Game {
  final int answer = Random().nextInt(100) + 1;
  int _totalGuesses = 0;

// constructor
  Game();

  GuessResult doGuess(int guess) {
    _totalGuesses++;

    if (guess == answer) {
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }
  }

// getter
  int get totalGuesses {
    return _totalGuesses;
  }
}
