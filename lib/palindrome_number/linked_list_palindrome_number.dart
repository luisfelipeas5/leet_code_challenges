//https://leetcode.com/problems/palindrome-number/

import 'dart:collection';

class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;
    if (x < 10) return true;

    final IntLinkedList digits = _getDigits(x);
    return _runTwoFingersAlgorithm(digits);
  }

  IntLinkedList _getDigits(int x) {
    final IntLinkedList digits = IntLinkedList();

    int divisionResult = x;
    while (divisionResult > 0) {
      final int rest = divisionResult % 10;
      digits.add(IntLinkedListEntry(rest));

      divisionResult = divisionResult ~/ 10;
    }

    return digits;
  }

  bool _runTwoFingersAlgorithm(IntLinkedList digits) {
    IntLinkedListEntry? leftFingerDigit = digits.first;
    IntLinkedListEntry? rightFinderDigit = digits.last;

    while (leftFingerDigit != rightFinderDigit &&
        leftFingerDigit != null &&
        rightFinderDigit != null) {
      final int leftDigit = leftFingerDigit.value;
      final int rightDigit = rightFinderDigit.value;

      if (leftDigit != rightDigit) return false;

      leftFingerDigit = leftFingerDigit.next;
      rightFinderDigit = rightFinderDigit.previous;
    }
    return true;
  }
}

typedef IntLinkedList = LinkedList<IntLinkedListEntry>;

final class IntLinkedListEntry extends LinkedListEntry<IntLinkedListEntry> {
  final int value;

  IntLinkedListEntry(this.value);
}
