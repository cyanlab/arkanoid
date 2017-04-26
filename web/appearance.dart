import 'lib/Color.dart';
import 'dart:html';

class Theme {

  final String NAME;
  final int _BACKGROUND;
  final int _PRIMARY_ACCENT;
  final int _ACCENT;

  Theme(this.NAME, this._BACKGROUND, this._PRIMARY_ACCENT, this._ACCENT) {
    print("Seting theme ${this.NAME}");
  }

  int getBG() {
    return this._BACKGROUND;
  }

  int getPA() {
    return this._PRIMARY_ACCENT;
  }

  int getA() {
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

