import 'package:leet_code_challenges/valid_parentheses.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Valid Parentheses", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "when s is '()', "
      "then expect to return true",
      () {
        expect(solution.isValid("()"), isTrue);
      },
    );

    test(
      "when s is '()[]{}', "
      "then expect to return true",
      () {
        expect(solution.isValid("()[]{}"), isTrue);
      },
    );

    test(
      "when s is '(]', "
      "then expect to return false",
      () {
        expect(solution.isValid("(]"), isFalse);
      },
    );

    test(
      "when s is '([])', "
      "then expect to return true",
      () {
        expect(solution.isValid("([])"), isTrue);
      },
    );

    test(
      "when s is '([)]', "
      "then expect to return false",
      () {
        expect(solution.isValid("([)]"), isFalse);
      },
    );
  });
}
