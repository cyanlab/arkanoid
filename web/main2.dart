import 'dart:async';
import 'dart:html' deferred as html;
import 'package:stagexl/stagexl.dart' deferred as stagexl;
import 'dart:math' deferred as math;
import 'appearance.dart';

Theme oldFag = new Theme("OLDFAG", Color.Black, Color.DarkCyan, Color.Gray);

//TODO: Theme currentTheme; choosing themes
Theme currentTheme = oldFag;

Future<Null> main() async {

  _loading();
  StageOptions options;
  options = new StageOptions()
    ..backgroundColor = currentTheme.getBG()
    ..renderEngine = RenderEngine.WebGL;
  var canvas = html.querySelector('#stage');
  var stage = new Stage(canvas, width: 1280, height: 800, options: options);

  var renderLoop = new RenderLoop();
  renderLoop.addStage(stage);

  _loading(stage);



/*  var resourceManager = new ResourceManager();
  resourceManager.addBitmapData("dart", "images/dart@2x.png");

  await resourceManager.load();

  var logoData = resourceManager.getBitmapData("dart");
  var logo = new Sprite();
  logo.addChild(new Bitmap(logoData));

  logo.pivotX = logoData.width / 2;
  logo.pivotY = logoData.height / 2;

  // Place it at top center.
  logo.x = 1280 / 2;
  logo.y = 0;

  stage.addChild(logo);

  // And let it fall.
  var tween = stage.juggler.addTween(logo, 3, Transition.easeOutBounce);
  tween.animate.y.to(800 / 2);

  // Add some interaction on mouse click.
  Tween rotation;
  logo.onMouseClick.listen((MouseEvent e) {
    // Don't run more rotations at the same time.
    if (rotation != null) return;
    rotation = stage.juggler.addTween(logo, 0.5, Transition.easeInOutCubic);
    rotation.animate.rotation.by(2 * PI);
    rotation.onComplete = () => rotation = null;
  });
  logo.mouseCursor = MouseCursor.POINTER;

  // See more examples:
  // https://github.com/bp74/StageXL_Samples
}*/
}

 Future _loading() async {

  await html.loadLibrary();

  await stagexl.loadLibrary();

  await math.loadLibrary();

}
