import 'dart:async';
import 'package:flame/game.dart';
import 'package:gamexflame/Component/Background.dart';
import 'package:gamexflame/Component/Ground.dart';

class FlappyBirdGame extends FlameGame {
  @override
  FutureOr<void> onLoad() async {
    addAll([Background(), Ground()]);
    return super.onLoad();
  }
}
