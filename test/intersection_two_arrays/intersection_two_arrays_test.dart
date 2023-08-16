import 'package:leet_code_challenges/intersection_two_arrays/intersection_two_arrays.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Intersection of Two Arrays", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "when nums1 = [1,2,2,1] and nums2 = [2,2], "
      "then expect to return [2]",
      () {
        final List<int> nums1 = [1, 2, 2, 1];
        final List<int> nums2 = [2, 2];
        expect(solution.intersection(nums1, nums2), [2]);
      },
    );

    test(
      "when nums1 = [4,9,5] and nums2 = [9,4,9,8,4], "
      "then expect to return [9,4]",
      () {
        final List<int> nums1 = [4, 9, 5];
        final List<int> nums2 = [9, 4, 9, 8, 4];
        expect(solution.intersection(nums1, nums2), [9, 4]);
      },
    );
  });
}
