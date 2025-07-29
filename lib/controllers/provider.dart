
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_maths/screens/first_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_maths/models/game_state.dart';
import 'game_controllers.dart';

final gameProvider =
StateNotifierProvider<GameController, GameState>((ref) {
  return GameController();
});