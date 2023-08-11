class Solution {
  static const Map<String, int> _romanChars = {
    "I": 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int romanToInt(String s) {
    int sum = 0;

    int charIndex = 0;
    while (charIndex < s.length) {
      final String char = s[charIndex];
      final int value = _romanChars[char]!;
      final int nextValue = _getNextValue(s, charIndex);

      if (value < nextValue) {
        sum -= value;
      } else {
        sum += value;
      }

      charIndex++;
    }
    return sum;
  }

  int _getNextValue(String romanNumber, int charIndex) {
    final int nextCharIndex = charIndex + 1;
    if (nextCharIndex == romanNumber.length) return 0;
    final nextRomanChar = romanNumber[nextCharIndex];
    return _romanChars[nextRomanChar] ?? 0;
  }
}
