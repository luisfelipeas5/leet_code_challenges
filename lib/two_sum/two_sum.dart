class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final List<Tuple> tuples = _getNumsWithIndex(nums);
    _sortTuples(tuples);

    int leftIndex = 0;
    int rightIndex = nums.length - 1;

    while (leftIndex < rightIndex) {
      final firstNumber = tuples[leftIndex];
      final secondNumber = tuples[rightIndex];
      final sum = firstNumber + secondNumber;
      if (sum == target) {
        return [firstNumber.index, secondNumber.index];
      }

      if (sum > target) {
        rightIndex--;
      } else {
        leftIndex++;
      }
    }
    return [];
  }

  List<Tuple> _getNumsWithIndex(List<int> nums) {
    return List.generate(
      nums.length,
      (index) {
        final num = nums[index];
        return Tuple(num: num, index: index);
      },
      growable: true,
    );
  }

  void _sortTuples(List<Tuple> tuples) {
    _mergeSort(
      tuples,
      subLeftIndex: 0,
      subRightIndex: tuples.length ~/ 2,
      subLength: tuples.length,
    );
  }

  void _mergeSort(
    List<Tuple> tuples, {
    required int subLeftIndex,
    required int subRightIndex,
    required int subLength,
  }) {
    if (subLength <= 1) {
      return;
    }

    // final sub = fullText.sub(
    //   subLeftIndex,
    //   subLeftIndex + subLength,
    // );

    // print("sub = $sub");
    _mergeSortLeftSide(
      tuples,
      subLeftIndex: subLeftIndex,
      subRightIndex: subRightIndex,
      subLength: subLength,
    );

    // print("sub = $sub");
    _mergeSortRightSide(
      tuples,
      subLeftIndex: subLeftIndex,
      subRightIndex: subRightIndex,
      subLength: subLength,
    );

    _twoFingerSort(
      tuples,
      subLeftIndex: subLeftIndex,
      subRightIndex: subRightIndex,
      subLength: subLength,
    );
  }

  void _mergeSortLeftSide(
    List<Tuple> tuples, {
    required int subLeftIndex,
    required int subRightIndex,
    required int subLength,
  }) {
    final int newLength = subLength ~/ 2;
    final int newLeftIndex = subLeftIndex;
    final int newRightIndex = newLeftIndex + (newLength ~/ 2);
    // print(
    //     "Left side = ${fullText.sub(newLeftIndex, newLeftIndex + newLength)}");
    _mergeSort(
      tuples,
      subLeftIndex: newLeftIndex,
      subRightIndex: newRightIndex,
      subLength: newLength,
    );
  }

  void _mergeSortRightSide(
    List<Tuple> tuples, {
    required int subLeftIndex,
    required int subRightIndex,
    required int subLength,
  }) {
    final int newLength = subLength - (subLength ~/ 2);
    final int newLeftIndex = subRightIndex;
    final int newRightIndex = newLeftIndex + (newLength ~/ 2);
    // print(
    //     "Right side = ${fullText.sub(newLeftIndex, newLeftIndex + newLength)}");
    _mergeSort(
      tuples,
      subLeftIndex: newLeftIndex,
      subRightIndex: newRightIndex,
      subLength: newLength,
    );
  }

  void _twoFingerSort(
    List<Tuple> tuples, {
    required int subLeftIndex,
    required int subRightIndex,
    required int subLength,
  }) {
    final int subLastIndex = subLeftIndex + subLength - 1;
    // print(
    //     "sub = ${fullText.sub(subLeftIndex, subLastIndex + 1)}");

    List<Tuple> sortedString = [];

    int leftIndex = subLeftIndex;
    int rightIndex = subRightIndex;

    while (leftIndex < subRightIndex || rightIndex <= subLastIndex) {
      final Tuple leftChar = tuples[leftIndex];
      final Tuple? rightChar =
          rightIndex < tuples.length ? tuples[rightIndex] : null;

      if (rightIndex > subLastIndex ||
          (leftIndex < subRightIndex && leftChar <= rightChar!)) {
        sortedString.add(leftChar);
        leftIndex++;
      } else {
        sortedString.add(rightChar!);
        rightIndex++;
      }
    }

    tuples.replaceRange(
      subLeftIndex,
      subLeftIndex + subLength,
      sortedString,
    );
  }
}

class Tuple implements Comparable<Tuple> {
  final int num;
  final int index;

  Tuple({
    required this.num,
    required this.index,
  });

  @override
  int compareTo(Tuple other) {
    return num.compareTo(other.num);
  }

  int operator +(Tuple other) {
    return num + other.num;
  }

  bool operator <(Tuple other) {
    return num < other.num;
  }

  bool operator <=(Tuple other) {
    return num <= other.num;
  }
}
