import 'package:angular2/angular2.dart';
import 'package:angular2/platform/browser.dart';
import 'dart:async';
import 'dart:html';
import 'dart:math' deferred as math;
import 'package:arkanoid/appearance.dart';
import 'package:arkanoid/Color.dart';
import 'package:arkanoid/app_component.dart';


Theme mainCyan = new Theme("MAINCYAN", Color.Black, Color.DarkCyan, Color.Gray);

//TODO: Theme currentTheme; choosing themes
Theme currentTheme = mainCyan;

 Future<ComponentRef> main() async {

  if (_loading())
    startMainMenu();

  return bootstrap(AppComponent);

}

 bool _loading() {



  querySelector('.r1').style.background = currentTheme.getBG();

  math.loadLibrary();

  querySelector('.r2').style.background = currentTheme.getBG();


  querySelector('.r3').style.background = currentTheme.getBG();


  // Node canvas = new Element.canvas();

 //Element cv = new Element.html('<canvas id="stage" class="stage&#45;&#45;fullscreen"></canvas>');

   //querySelector(".container-onload").replaceWith(cv);
   //print(cv);
  return true;
}

void startMainMenu() {


}