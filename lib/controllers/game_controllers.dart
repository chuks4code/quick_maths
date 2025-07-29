import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic_flie.dart';
import '../models/game_state.dart';

class GameController extends StateNotifier<GameState> {
  GameController()
      : super(GameState(
    question: Logic.generate(),
    score: 0,
    feedback: '',
  ));

  void nextQuestion() {
    state = state.copyWith(
      question: Logic.generate(),
      feedback: '',
    );
  }

  void checkAnswer(String input) {
    final userAnswer = double.tryParse(input.trim());
    if (userAnswer == null) {
      state = state.copyWith(feedback: '❗ Enter a valid number');
      return;
    }

    if (userAnswer == state.question.correctAnswer) {
      state = state.copyWith(
        score: state.score + 1,
        feedback: '✅ Correct!',
      );
    } else {
      state = state.copyWith(
        feedback: '❌ Wrong! Answer: \${state.question.correctAnswer}',
      );
    }

    Future.delayed(const Duration(seconds: 1), nextQuestion);
  }
}