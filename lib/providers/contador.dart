import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Contador with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  Color? _color = Colors.grey[300];
  Color? get color => _color;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }

  void setColor(String color) {
    switch (color) {
      case "K":
        _color = Colors.black;
        break;
      case "R":
        _color = Colors.red;
        break;
      case "B":
        _color = Colors.blue;
        break;
      case "G":
        _color = Colors.green;
        break;
      default:
    }
    notifyListeners();
  }
}
