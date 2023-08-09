import 'package:leet_code_challenges/palindrome_number.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Palindrome Number", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "given x = 121, "
      "when isPalindrome is called, "
      "then expect to return true",
      () {
        expect(solution.isPalindrome(121), isTrue);
      },
    );

    test(
      "given x = -121, "
      "when isPalindrome is called, "
      "then expect to return false",
      () {
        expect(solution.isPalindrome(-121), isFalse);
      },
    );

    test(
      "given x = 0, "
      "when isPalindrome is called, "
      "then expect to return true",
      () {
        expect(solution.isPalindrome(0), isTrue);
      },
    );

    test(
      "given x = 10, "
      "when isPalindrome is called, "
      "then expect to return false",
      () {
        expect(solution.isPalindrome(10), isFalse);
      },
    );

    test(
      "given x = 1991, "
      "when isPalindrome is called, "
      "then expect to return true",
      () {
        expect(solution.isPalindrome(1991), isTrue);
      },
    );
  });
}
