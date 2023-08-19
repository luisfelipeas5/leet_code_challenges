import 'package:leet_code_challenges/two_sum/two_sum.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Two Sum", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "when nums = [2,7,11,15] and target = 9, "
      "then expect to return [0,1]",
      () {
        final nums = [2, 7, 11, 15];
        final target = 9;
        expect(solution.twoSum(nums, target), [0, 1]);
      },
    );

    test(
      "when nums = [3,2,4] and target = 6, "
      "then expect to return [1,2]",
      () {
        final nums = [3,2,4];
        final target = 6;
        expect(solution.twoSum(nums, target), [1, 2]);
      },
    );

    test(
      "when nums = [3,3] and target = 6, "
      "then expect to return [0,1]",
      () {
        final nums = [3,3];
        final target = 6;
        expect(solution.twoSum(nums, target), [0, 1]);
      },
    );
  });
}
