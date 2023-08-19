class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final List<Tuple> numsWithOriginalIndex = _getNumsWithIndex(nums);
    numsWithOriginalIndex.sort();

    int leftIndex = 0;
    int rightIndex = nums.length - 1;

    while (leftIndex < rightIndex) {
      final firstNumber = numsWithOriginalIndex[leftIndex];
      final secondNumber = numsWithOriginalIndex[rightIndex];
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
    final tuples = <Tuple>[];
    for (var i = 0; i < nums.length; i++) {
      final num = nums[i];
      tuples.add(Tuple(num: num, index: i));
    }
    return tuples;
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

}
