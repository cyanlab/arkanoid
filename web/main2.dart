import 'dart:async' deferred as async;
import 'dart:html';
import 'dart:math' deferred as math;
import 'appearance.dart';
import 'lib/Color.dart' deferred as Color;



 main()  {

  _loading();

  startMainMenu();


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



   for (Element el in querySelectorAll("#onload")) {
     el.remove();
   }
  return true;
}

void startMainMenu() {


}