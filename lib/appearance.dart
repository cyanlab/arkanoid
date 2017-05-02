//import 'package:arkanoid/Color.dart';
import 'dart:html';

class Theme {

  final String NAME;
  final String _BACKGROUND;
  final String _PRIMARY_ACCENT;
  final String _ACCENT;

  Theme(this.NAME, this._BACKGROUND, this._PRIMARY_ACCENT, this._ACCENT) {
    print("Seting theme ${this.NAME}");
  }

  String getBG() {
    return this._BACKGROUND;
  }

  String getPA() {
    return this._PRIMARY_ACCENT;
  }

  String getA() {
    return this._ACCENT;
  }

}

class Rect {
  final int x;
  final int y;

  Rect (this.x, this.y, RectOptions opt) {

    var el = new Element.html('<div class="rect"></div>');
    document.body.children.add(el);

  }
}


enum RectOptions {

  HEIGHT, WIDTH, COLOR, BORDER
}

