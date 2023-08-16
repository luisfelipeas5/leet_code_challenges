//https://leetcode.com/problems/intersection-of-two-arrays/description/?envType=list&envId=ridaipn3

class Solution {
  late List<int> numsIntersection;
  late Map<int, bool> numSet;

  List<int> intersection(List<int> nums1, List<int> nums2) {
    numsIntersection = [];
    numSet = {};

    for (var num1 in nums1) {
      numSet[num1] = false;
    }
    for (var num2 in nums2) {
      if (numSet[num2] == false) {
        numsIntersection.add(num2);
        numSet[num2] = true;
      }
    }

    return numsIntersection;
  }
}
