import 'package:quick_maths/logic/logic_flie.dart';
import 'package:quick_maths/controllers/game_controllers.dart';

class GameState {
  final Logic question;
  final int score;
  final String feedback;

  GameState({
    required this.question,
    required this.score,
    required this.feedback,
  });

  GameState copyWith({
    Logic? question,
    int? score,
    String? feedback,
  }) {
    return GameState(
      question: question ?? this.question,
      score: score ?? this.score,
      feedback: feedback ?? this.feedback,
    );
  }
}
