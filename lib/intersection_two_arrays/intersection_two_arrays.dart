//https://leetcode.com/problems/intersection-of-two-arrays/description/?envType=list&envId=ridaipn3

class Solution {
  late List<int> numsIntersection;
  late Map<int, bool> numSet;

  List<int> intersection(List<int> nums1, List<int> nums2) {
    numsIntersection = [];
    numSet = {};

    for (var num in nums1) {
      numSet[num] = false;
    }
    for (var num in nums2) {
      if (numSet[num] == false) {
        numsIntersection.add(num);
        numSet[num] = true;
      }
    }

    return numsIntersection;
  }
}
