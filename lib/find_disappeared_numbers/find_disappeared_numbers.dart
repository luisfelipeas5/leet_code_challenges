class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    final factor = 2 * nums.length;

    for (var i = 0; i < nums.length; i++) {
      final num = nums[i];
      nums[(num % factor) - 1] += factor;
    }

    final result = List<int>.empty(growable: true);
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] <= factor) {
        result.add(i + 1);
      }
    }
    return result;
  }
}
