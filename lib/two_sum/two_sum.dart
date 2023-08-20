class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final Map<int, int> complementsIndexes = {};

    for (var i = 0; i < nums.length; i++) {
      final num = nums[i];
      final complement = target - num;
      final complementsIndex = complementsIndexes[num];
      if (complementsIndex == null) {
        complementsIndexes[complement] = i;
      } else {
        return [complementsIndex, i];
      }
    }

    return [];
  }
}
