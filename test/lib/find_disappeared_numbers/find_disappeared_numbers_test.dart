import 'package:leet_code_challenges/find_disappeared_numbers/find_disappeared_numbers.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Find All Numbers Disappeared in an Array /", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "when nums = [4,3,2,7,8,2,3,1], "
      "then expect to return [5,6]",
      () {
        final nums = [4, 3, 2, 7, 8, 2, 3, 1];
        expect(solution.findDisappearedNumbers(nums), [5, 6]);
      },
    );

    test(
      "when nums = [1,1], "
      "then expect to return [2]",
      () {
        final nums = [1, 1];
        expect(solution.findDisappearedNumbers(nums), [2]);
      },
    );
    test(
      "when nums = [1,2,3,5,5], "
      "then expect to return [4]",
      () {
        final nums = [1, 2, 3, 5, 5];
        expect(solution.findDisappearedNumbers(nums), [4]);
      },
    );
  });
}
