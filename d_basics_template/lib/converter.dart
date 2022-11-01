abstract class Converter {
  static String bin2dec(String binary) {
    return int.parse(binary, radix: 2).toRadixString(10);
  }
}
