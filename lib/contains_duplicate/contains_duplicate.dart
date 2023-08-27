//https://leetcode.com/problems/contains-duplicate/?envType=list&envId=rtkm3153

class Solution {
  bool containsDuplicate(List<int> nums) {
    final map = <int, bool>{};
    for (var num in nums) {
      final boolOnMap = map[num];

      if (boolOnMap != null) return true;

      if (boolOnMap == null) {
        map[num] = false;
      }
    }
    return false;
  }
}
