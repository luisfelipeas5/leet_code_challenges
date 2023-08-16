//https://leetcode.com/problems/intersection-of-two-arrays/description/?envType=list&envId=ridaipn3

class Solution {
  late List<int> numsIntersection;
  late Set<int> intersectionSet;

  List<int> intersection(List<int> nums1, List<int> nums2) {
    numsIntersection = [];
    intersectionSet = {};

    for (var num1 in nums1) {
      if (intersectionSet.contains(num1)) continue;
      for (var num2 in nums2) {
        if (num1 == num2) {
          _insert(num1);
          break;
        }
      }
    }

    return numsIntersection;
  }

  void _insert(int num) {
    numsIntersection.add(num);
    intersectionSet.add(num);
  }
}
