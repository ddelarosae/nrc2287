import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

class MyColor extends ChangeNotifier {
  // _isRed is the app state. obs means that this variable can be observed from
  // the UI
  bool _isRed = false;

  bool get isRed => _isRed;

  void changeRed() {
    logInfo('Receive event from UI, apply business logic to modify app state');
    _isRed = _isRed == true ? false : true;
    notifyListeners();
  }
}
