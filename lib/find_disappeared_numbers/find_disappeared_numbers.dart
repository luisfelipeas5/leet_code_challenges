class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    final result = List<int>.generate(nums.length, (index) => index + 1);

    const markToDelete = -1;
    for (var i = 0; i < nums.length; i++) {
      result[nums[i] - 1] = markToDelete;
    }

    int index = 0;
    while (index < result.length) {
      if (result[index] == markToDelete) {
        result.removeAt(index);
      } else {
        index++;
      }
    }

    return result;
  }
}
