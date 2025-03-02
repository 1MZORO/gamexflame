import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'game/FlappyBirdGame.dart';

void main() {
  final game = FlappyBirdGame();
  runApp(
    GameWidget(game: game)
  );
}
