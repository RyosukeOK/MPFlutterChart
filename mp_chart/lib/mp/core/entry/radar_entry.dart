import 'package:mp_chart/mp/core/entry/entry.dart';
import 'dart:ui' as ui;

class RadarEntry extends Entry {
  RadarEntry({double value, Object data, ui.Image icon, List<ui.Image> icons, double iconSize})
      : this._icons = icons, this._iconSize = iconSize, super(x: 0, y: value, icon: icon, data: data);

  /// This is the same as getY(). Returns the value of the RadarEntry.
  ///
  /// @return
  double getValue() {
    return y;
  }

  List<ui.Image> _icons;
  double _iconSize;

  // ignore: unnecessary_getters_setters
  List<ui.Image> get icons => _icons;

  // ignore: unnecessary_getters_setters
  set icons(List<ui.Image> value) {
    _icons = value;
  }

  // ignore: unnecessary_getters_setters
  double get iconSize => _iconSize;

  // ignore: unnecessary_getters_setters
  set iconSize(double value) {
    _iconSize = value;
  }


  RadarEntry copy() {
    RadarEntry e = RadarEntry(value: y, data: mData);
    return e;
  }
}
