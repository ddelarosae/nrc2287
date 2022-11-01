abstract class Converter {
  static String bin2dec(String binary) {
    return int.parse(binary, radix: 2).toRadixString(10);
  }

  static String dec2bin(String decimal) {
    return int.parse(decimal, radix: 10).toRadixString(2);
  }
}
