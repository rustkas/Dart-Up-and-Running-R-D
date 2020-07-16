void main() {
  var name = 'Anatolii';
  assert(name != null);
  var x = 1;

  var maxIntValue = 9223372036854775807;
  assert(maxIntValue + x < 0);
  var minIntValue = -9223372036854775808;
  assert(minIntValue - x > 0);
  var hex = 0xDCADDAEF;
  assert(hex == 3702381295);
  var binIntValue = BigInt.parse(
      '6534658346524376592384765923749587398457294759347029438709349347');

  assert(binIntValue.isValidInt == false);
  var exp =
      5.62e500000000000000000000000000000000000000000000000000000000000000;
  assert(exp.isInfinite == true);

  var z = 6.5;
  assert(z.truncate() == 6);
  string_num();
  bitwise();
}

void string_num() {
// String -> int
  var one = int.parse('190');
  assert(one > 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne < 1.12);

// int -> String
  var oneAsString = 19.toString();
  assert(oneAsString == '19');

// double -> String
  var piAsString = 3.14159.toStringAsFixed(4);
  assert(piAsString == '3.1416');
}

void bitwise() {
  var value1 = 7;
  var value2 = 8;
  print(
      '${value1.toRadixString(2)} & ${value2.toRadixString(2)} = ${(value1 & value2).toRadixString(2)}');
  print(
      '${value1.toRadixString(2)} | ${value2.toRadixString(2)} = ${(value1 | value2).toRadixString(2)}');
  print(
      '${value1.toRadixString(2)} ^ ${value2.toRadixString(2)} = ${(value1 ^ value2).toRadixString(2)}');
  print(
      '~${value1.toRadixString(2)} = ${(~value1).toRadixString(2)} {${(~value1)}}');
  assert(value1 & value2 == 0);
  assert(value1 | value2 == 15);
  assert(value1 ^ value2 == 15);
  assert(~value1 == -8);
}

// to run this app in production mode
// in console cd to the current project directory
/// run command [pub --verbosity=all run ex_02_variables]
/// or [dart bin/main.dart]
// to run this app in development mode
// in console cd to the current project directory
/// [dart --enable-asserts bin/main.dart]
