//https://leetcode.com/problems/valid-anagram/submissions/1021485781/?envType=list&envId=ridaipn3

class Solution {
  static final int _alphabetCharCount = "z".codeUnitAt(0) - "a".codeUnitAt(0);

  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    final List<int> sCharsCount = _countChars(s);
    final List<int> tCharsCount = _countChars(t);

    for (var i = 0; i < sCharsCount.length; i++) {
      final sCharCount = sCharsCount[i];
      final tCharCount = tCharsCount[i];
      if (sCharCount != tCharCount) return false;
    }
    return true;
  }

  List<int> _countChars(String text) {
    final charCountList = _makeEmptyCharCountList();
    for (var charIndex = 0; charIndex < text.length; charIndex++) {
      final char = text[charIndex];
      final indexOnList = char.codeUnitAt(0) - "a".codeUnitAt(0);
      charCountList[indexOnList] += 1;
    }
    return charCountList;
  }

  List<int> _makeEmptyCharCountList() {
    return List.filled(_alphabetCharCount + 1, 0, growable: false);
  }

}
