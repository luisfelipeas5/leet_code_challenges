import 'package:leet_code_challenges/roman_to_integer.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Roman to Integer", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "given s = 'II', "
      "when romanToInt is called, "
      "then expect to return 2",
      () {
        expect(solution.romanToInt("II"), 2);
      },
    );

    test(
      "given s = 'IV', "
      "when romanToInt is called, "
      "then expect to return 4",
      () {
        expect(solution.romanToInt("IV"), 4);
      },
    );

    test(
      "given s = 'IX', "
      "when romanToInt is called, "
      "then expect to return 9",
      () {
        expect(solution.romanToInt("IX"), 9);
      },
    );

    test(
      "given s = 'XII', "
      "when romanToInt is called, "
      "then expect to return 12",
      () {
        expect(solution.romanToInt("XII"), 12);
      },
    );

    test(
      "given s = 'XL', "
      "when romanToInt is called, "
      "then expect to return 40",
      () {
        expect(solution.romanToInt("XL"), 40);
      },
    );

    test(
      "given s = 'XC', "
      "when romanToInt is called, "
      "then expect to return 90",
      () {
        expect(solution.romanToInt("XC"), 90);
      },
    );

    test(
      "given s = 'XXVII', "
      "when romanToInt is called, "
      "then expect to return 27",
      () {
        expect(solution.romanToInt("XXVII"), 27);
      },
    );

    test(
      "given s = 'CD', "
      "when romanToInt is called, "
      "then expect to return 500",
      () {
        expect(solution.romanToInt("CD"), 400);
      },
    );

    test(
      "given s = 'CM', "
      "when romanToInt is called, "
      "then expect to return 900",
      () {
        expect(solution.romanToInt("CM"), 900);
      },
    );

    test(
      "given s = 'MCMXCIV', "
      "when romanToInt is called, "
      "then expect to return 1994",
      () {
        expect(solution.romanToInt("MCMXCIV"), 1994);
      },
    );
  });
}
