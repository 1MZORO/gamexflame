import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';
import 'package:gamexflame/game/Configration.dart';
import 'package:gamexflame/game/FlappyBirdGame.dart';
import '../game/Assets.dart';

class Ground extends ParallaxComponent<FlappyBirdGame>{
Ground();

@override
  Future<void> onLoad() async{
    final ground = await Flame.images.load(Assets.ground);
    parallax = Parallax(
      [
        ParallaxLayer(ParallaxImage(ground,fill: LayerFill.none),)
      ]
    );
  }

  @override
  void update(double dt){
  super.update(dt);
  parallax?.baseVelocity.x = Config.gameSpeed;
  }
}