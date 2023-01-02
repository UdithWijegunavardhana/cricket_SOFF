import 'dart:math';

class IdGenerator {
  static String generateTimeId() {
    var bigIntA = BigInt.parse('99999999999999999999');
    var bigIntB = BigInt.parse('10000000000000000000');
    String randomNumber = (Random().nextDouble() * pow(10, 17)).toString().substring(0,17);
    var randomBigInt = BigInt.parse(randomNumber);

    var timeId = (randomBigInt * (bigIntA - bigIntB + BigInt.parse('1')) + bigIntB);

    return timeId.toString();
  }
}
