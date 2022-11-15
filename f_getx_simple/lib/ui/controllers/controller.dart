import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

class MyController extends GetxController {
  // _isRed is the app state. obs means that this variable can be observed from
  // the UI
  var _isRed = false.obs;

  bool get isRed => _isRed.value;

  void changeRed() {
    logInfo('Receive event from UI, apply business logic to modify app state');
    _isRed.value = _isRed.value == true ? false : true;
  }
}
