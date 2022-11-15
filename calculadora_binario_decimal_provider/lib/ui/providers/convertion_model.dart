import 'package:demo_app/domain/use_case/Converter.dart';
import 'package:flutter/foundation.dart';

class ConvertionModel extends ChangeNotifier {
  String _decimal = "0";
  String _binary = "0";

  String get decimal => _decimal;

  String get binary => _binary;

  void reset() {
    _decimal = "0";
    _binary = "0";
    notifyListeners();
  }

  void updateBinary(int digit) {
    _binary = Converter.adjustValue(_binary, digit);
    _decimal = Converter.bin2dec(_binary);
    notifyListeners();
  }

  void updateDecimal(int digit) {
    _decimal = Converter.adjustValue(_decimal, digit);
    _binary = Converter.dec2bin(_decimal);
    notifyListeners();
  }
}
