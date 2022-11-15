import 'package:calculadorabinariodecimalgetx/domain/use_case/converter.dart';
import 'package:get/get.dart';

class ConverterController extends GetxController {
  var _decimal = "0".obs;
  var _binary = "0".obs;

  String get decimal => _decimal.value;
  String get binary => _binary.value;

  void updateDecimal(int digit) {
    _decimal.value = Converter.adjustValue(_decimal.value, digit);
    _binary.value = Converter.dec2bin(_decimal.value);
  }

  void updateBinary(int digit) {
    _binary.value = Converter.adjustValue(_binary.value, digit);
    _decimal.value = Converter.bin2dec(_binary.value);
  }

  void reset() {
    _binary.value = "0";
    _decimal.value = "0";
  }
}
