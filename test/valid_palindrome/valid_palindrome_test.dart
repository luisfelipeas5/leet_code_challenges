import 'package:leet_code_challenges/valid_palindrome/valid_palindrome.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Valid Palindrome", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "when s is 'A man, a plan, a canal: Panama', "
      "then expect to return true",
      () {
        final String s = "A man, a plan, a canal: Panama";
        expect(solution.isPalindrome(s), isTrue);
      },
    );

    test(
      "when s is 'race a car', "
      "then expect to return false",
      () {
        final String s = "race a car";
        expect(solution.isPalindrome(s), isFalse);
      },
    );

    test(
      "when s is ' ', "
      "then expect to return true",
      () {
        final String s = " ";
        expect(solution.isPalindrome(s), isTrue);
      },
    );

    test(
      "when s is '0P', "
      "then expect to return false",
      () {
        final String s = "0P";
        expect(solution.isPalindrome(s), isFalse);
      },
    );
  });
}
