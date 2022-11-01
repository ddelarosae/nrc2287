import 'package:dart_basics/converter.dart';

class MainConverter {
  String? _binary, _decimal;

  MainConverter() {
    _binary ??= '0';
    _decimal ??= '0';
  }

  set binary(String? value) => _binary = value;
  set decimal(String? value) => _decimal = value;

  String convertBinary() {
    assert(_binary != null);
    return Converter.bin2dec(_binary!);
  }

  String convertDecimal() {
    assert(_decimal != null);
    return Converter.dec2bin(_decimal!);
  }
}
