//https://leetcode.com/problems/valid-palindrome

class Solution {
  bool isPalindrome(String s) {
    int leftFingerIndex = _getNextValidCharIndex(-1, s);
    int rightFinderIndex = _getPreviousValidCharIndex(s.length, s);

    while (leftFingerIndex <= rightFinderIndex) {
      final String leftChar = s[leftFingerIndex];
      final String rightChar = s[rightFinderIndex];

      if (leftChar.toLowerCase() != rightChar.toLowerCase()) return false;

      leftFingerIndex = _getNextValidCharIndex(leftFingerIndex, s);
      rightFinderIndex = _getPreviousValidCharIndex(rightFinderIndex, s);
    }
    return true;
  }

  int _getNextValidCharIndex(int startIndex, String s) {
    for (var i = startIndex + 1; i < s.length; i++) {
      if (_isValidCharIndex(i, s)) return i;
    }
    return s.length;
  }

  int _getPreviousValidCharIndex(int startIndex, String s) {
    for (var i = startIndex - 1; i >= 0; i--) {
      if (_isValidCharIndex(i, s)) return i;
    }
    return -1;
  }

  bool _isValidCharIndex(int index, String s) {
    final charCodeUnit = s[index].toLowerCase().codeUnitAt(0);
    return _isALetter(charCodeUnit) || _isANumber(charCodeUnit);
  }

  bool _isALetter(int charCodeUnit) {
    return charCodeUnit >= "a".codeUnitAt(0) &&
        charCodeUnit <= "z".codeUnitAt(0);
  }

  bool _isANumber(int charCodeUnit) {
    return charCodeUnit >= "0".codeUnitAt(0) &&
        charCodeUnit <= "9".codeUnitAt(0);
  }
}
