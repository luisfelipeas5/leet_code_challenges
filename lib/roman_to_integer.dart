class Solution {
  static const Map<String, int> _romanChars = {
    "0": 0,
    "I": 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int romanToInt(String romanNumber) {
    int sum = 0;

    final String romanNumberWithZero = "${romanNumber}0";
    for (var charIndex = 0; charIndex < romanNumber.length; charIndex++) {
      final String char = romanNumberWithZero[charIndex];
      final String nextChar = romanNumberWithZero[charIndex + 1];

      final int value = _romanChars[char]!;
      final int nextValue = _romanChars[nextChar]!;

      if (value < nextValue) {
        sum -= value;
      } else {
        sum += value;
      }
    }

    return sum;
  }
}
