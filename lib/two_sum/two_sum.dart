class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (var i = 0; i < nums.length; i++) {
      final firstNumber = nums[i];
      for (var j = i + 1; j < nums.length; j++) {
        final secondNumber = nums[j];
        if (firstNumber + secondNumber == target) {
          return [i, j];
        }
      }
    }
    return [];
  }
}
