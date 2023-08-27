class Solution {
  bool isHappy(int n) {
    final Set<int> set = <int>{};

    int sumOfDigits = n;
    while (sumOfDigits != 1) {
      sumOfDigits = _sumOfDigits(sumOfDigits);
      if (set.contains(sumOfDigits)) return false;
      set.add(sumOfDigits);
    }
    return true;
  }

  int _sumOfDigits(int num) {
    int sum = 0;

    int rest = num;
    while (rest > 0) {
      final digit = rest % 10;
      sum += digit * digit;
      rest = rest ~/ 10;
    }
    return sum;
  }
}
