//https://leetcode.com/problems/intersection-of-two-arrays/description/?envType=list&envId=ridaipn3

class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    if (nums1.length > nums2.length) {
      return _intersection(
        biggest: nums1,
        smallest: nums2,
      );
    }

    return _intersection(
      biggest: nums2,
      smallest: nums1,
    );
  }

  List<int> _intersection({
    required List<int> smallest,
    required List<int> biggest,
  }) {
    final List<int> numsIntersection = [];
    final Map<int, bool> numSet = {};

    for (var num in smallest) {
      numSet[num] = false;
    }
    for (var num in biggest) {
      if (numSet[num] == false) {
        numsIntersection.add(num);
        numSet[num] = true;
      }
    }

    return numsIntersection;
  }
}
