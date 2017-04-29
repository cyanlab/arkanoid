import 'dart:async';
import 'dart:html';
import 'dart:math' deferred as math;
import 'package:arkanoid/appearance.dart';
import 'package:arkanoid/Color.dart' deferred as Color;



 Future<Null> main() async {

  _loading();

  /*startMainMenu();*/


}

 bool _loading() {



  querySelector('.r1').style.background = '#11ebff';

  math.loadLibrary();

  querySelector('.r2').style.background = '#11ebff';

  Color.loadLibrary();

  querySelector('.r3').style.background = '#11ebff';

  Theme oldFag = new Theme("OLDFAG", Color.Color.Black, Color.Color.DarkCyan, Color.Color.Gray);

//TODO: Theme currentTheme; choosing themes
   Theme currentTheme = oldFag;


   Node canvas = new Element.canvas();

 Element cv = new Element.html('<canvas id="stage" class="stage&#45;&#45;fullscreen"></canvas>');

   querySelector(".container-onload").replaceWith(cv);
   print(cv);
  return true;
}

void startMainMenu() {


}