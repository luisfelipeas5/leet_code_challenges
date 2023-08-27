import 'package:leet_code_challenges/happy_number/happy_number.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Happy Number", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "when n = 19, "
      "then expect to return true",
      () {
        expect(solution.isHappy(19), isTrue);
      },
    );

    test(
      "when n = 2, "
      "then expect to return false",
      () {
        expect(solution.isHappy(2), isFalse);
      },
    );

    test(
      "when n = 7, "
      "then expect to return true",
      () {
        expect(solution.isHappy(7), isTrue);
      },
    );
  });
}
