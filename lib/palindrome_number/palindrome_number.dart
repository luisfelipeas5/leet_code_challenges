//https://leetcode.com/problems/palindrome-number/

class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;
    if (x < 10) return true;

    final List<int> digits = _getDigits(x);
    return _runTwoFingersAlgorithm(digits);
  }

  List<int> _getDigits(int x) {
    final List<int> digits = [];
    int divisionResult = x;
    while (divisionResult > 0) {
      final int rest = divisionResult % 10;
      digits.add(rest);

      divisionResult = divisionResult ~/ 10;
    }
    return digits;
  }

  bool _runTwoFingersAlgorithm(List<int> digits) {
    int leftFingerIndex = 0;
    int rightFinderIndex = digits.length - 1;

    while (leftFingerIndex <= rightFinderIndex) {
      final int leftDigit = digits[leftFingerIndex];
      final int rightDigit = digits[rightFinderIndex];

      if (leftDigit != rightDigit) return false;

      leftFingerIndex++;
      rightFinderIndex--;
    }
    return true;
  }
}
