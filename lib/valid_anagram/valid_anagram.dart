class Solution {
  bool isAnagram(String s, String t) {
    s = _mergeSort(
      s,
      substringLeftIndex: 0,
      substringRightIndex: s.length ~/ 2,
      substringLength: s.length,
    );
    t = _mergeSort(
      t,
      substringLeftIndex: 0,
      substringRightIndex: t.length ~/ 2,
      substringLength: t.length,
    );
    return s == t;
  }

  String _mergeSort(
    String fullText, {
    required int substringLeftIndex,
    required int substringRightIndex,
    required int substringLength,
  }) {
    if (substringLength <= 1) {
      return fullText;
    }

    fullText = _mergeSort(
      fullText,
      substringLeftIndex: substringLeftIndex,
      substringRightIndex: (substringRightIndex - substringLeftIndex) ~/ 2,
      substringLength: substringRightIndex - substringLeftIndex,
    );
    fullText = _mergeSort(
      fullText,
      substringLeftIndex: substringRightIndex,
      substringRightIndex: substringRightIndex + (substringLength ~/ 2),
      substringLength: ,
    );

    return _twoFingerSort(
      fullText,
      substringLeftIndex: substringLeftIndex,
      substringRightIndex: substringRightIndex,
      substringLength: substringLength,
    );
  }

  String _twoFingerSort(
    String fullText, {
    required int substringLeftIndex,
    required int substringRightIndex,
    required int substringLength,
  }) {
    final int substringLastIndex = substringLeftIndex + substringLength - 1;
    print(
        "substring = ${fullText.substring(substringLeftIndex, substringLastIndex + 1)}");

    String sortedString = "";

    int leftIndex = substringLeftIndex;
    int rightIndex = substringRightIndex;

    while (
        leftIndex < substringRightIndex || rightIndex <= substringLastIndex) {
      final String leftChar = fullText[leftIndex];
      final String rightChar = fullText[rightIndex];

      if (rightIndex > substringLastIndex ||
          (leftIndex < substringRightIndex &&
              leftChar.codeUnitAt(0) < rightChar.codeUnitAt(0))) {
        sortedString += leftChar;
        leftIndex++;
      } else {
        sortedString += rightChar;
        rightIndex++;
      }
    }

    print("sortedString = $sortedString");

    return fullText.replaceRange(
      substringLeftIndex,
      substringLeftIndex + substringLength,
      sortedString,
    );
  }
}
