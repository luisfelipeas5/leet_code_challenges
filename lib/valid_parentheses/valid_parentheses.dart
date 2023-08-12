class Solution {
  bool isValid(String s) {
    if (s.length % 2 != 0) return false;

    const Map<String, String> closeMap = {
      ")": "(",
      "]": "[",
      "}": "{",
    };

    final List<String> openList = <String>[];

    for (var charIndex = 0; charIndex < s.length; charIndex++) {
      final String char = s[charIndex];

      final String? openPair = closeMap[char];
      final bool isOpenChar = openPair == null;

      if (isOpenChar) {
        openList.add(char);
      } else if (openList.isEmpty || openList.last != openPair) {
        return false;
      } else {
        openList.removeLast();
      }
    }

    return openList.isEmpty;
  }
}
