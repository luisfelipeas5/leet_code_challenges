//https://leetcode.com/problems/valid-anagram/submissions/1021485781/?envType=list&envId=ridaipn3

class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

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

    // final substring = fullText.substring(
    //   substringLeftIndex,
    //   substringLeftIndex + substringLength,
    // );

    // print("substring = $substring");
    fullText = _mergeSortLeftSide(
      fullText,
      substringLeftIndex: substringLeftIndex,
      substringRightIndex: substringRightIndex,
      substringLength: substringLength,
    );

    // print("substring = $substring");
    fullText = _mergeSortRightSide(
      fullText,
      substringLeftIndex: substringLeftIndex,
      substringRightIndex: substringRightIndex,
      substringLength: substringLength,
    );

    return _twoFingerSort(
      fullText,
      substringLeftIndex: substringLeftIndex,
      substringRightIndex: substringRightIndex,
      substringLength: substringLength,
    );
  }

  String _mergeSortLeftSide(
    String fullText, {
    required int substringLeftIndex,
    required int substringRightIndex,
    required int substringLength,
  }) {
    final int newLength = substringLength ~/ 2;
    final int newLeftIndex = substringLeftIndex;
    final int newRightIndex = newLeftIndex + (newLength ~/ 2);
    // print(
    //     "Left side = ${fullText.substring(newLeftIndex, newLeftIndex + newLength)}");
    return _mergeSort(
      fullText,
      substringLeftIndex: newLeftIndex,
      substringRightIndex: newRightIndex,
      substringLength: newLength,
    );
  }

  String _mergeSortRightSide(
    String fullText, {
    required int substringLeftIndex,
    required int substringRightIndex,
    required int substringLength,
  }) {
    final int newLength = substringLength - (substringLength ~/ 2);
    final int newLeftIndex = substringRightIndex;
    final int newRightIndex = newLeftIndex + (newLength ~/ 2);
    // print(
    //     "Right side = ${fullText.substring(newLeftIndex, newLeftIndex + newLength)}");
    return _mergeSort(
      fullText,
      substringLeftIndex: newLeftIndex,
      substringRightIndex: newRightIndex,
      substringLength: newLength,
    );
  }

  String _twoFingerSort(
    String fullText, {
    required int substringLeftIndex,
    required int substringRightIndex,
    required int substringLength,
  }) {
    final int substringLastIndex = substringLeftIndex + substringLength - 1;
    // print(
    //     "substring = ${fullText.substring(substringLeftIndex, substringLastIndex + 1)}");

    String sortedString = "";

    int leftIndex = substringLeftIndex;
    int rightIndex = substringRightIndex;

    while (
        leftIndex < substringRightIndex || rightIndex <= substringLastIndex) {
      final String leftChar = fullText[leftIndex];
      final String rightChar = fullText.getCharAtOr(rightIndex, "z");

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

    // print("sortedString = $sortedString");

    return fullText.replaceRange(
      substringLeftIndex,
      substringLeftIndex + substringLength,
      sortedString,
    );
  }
}

extension StringExtension on String {
  String getCharAtOr(int index, String orChar) {
    if (index < length) return this[index];
    return orChar;
  }
}
