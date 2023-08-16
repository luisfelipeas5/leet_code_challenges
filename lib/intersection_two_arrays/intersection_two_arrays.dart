//https://leetcode.com/problems/intersection-of-two-arrays/description/?envType=list&envId=ridaipn3

class Solution {
  late List<int> numsIntersection;

  List<int> intersection(List<int> nums1, List<int> nums2) {
    numsIntersection = [];

    for (var num1 in nums1) {
      if (_contains(num1)) continue;
      for (var num2 in nums2) {
        if (num1 == num2) {
          _insert(num1);
          break;
        }
      }
    }

    return numsIntersection;
  }

  bool _contains(int num) {
    for (var numInIntersection in numsIntersection) {
      if (numInIntersection == num) return true;
      if (numInIntersection > num) return false;
    }
    return false;
  }

  void _insert(int num) {
    int insertionIndex = 0;
    for (insertionIndex = 0;
        insertionIndex < numsIntersection.length;
        insertionIndex++) {
      if (numsIntersection[insertionIndex] > num) {
        break;
      }
    }
    numsIntersection.insert(insertionIndex, num);
  }
}
