import 'package:leet_code_challenges/contains_duplicate/contains_duplicate.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group('Contains Duplicate', () {
    setUp(() {
      solution = Solution();
    });

    test(
      "when nums = [1,2,3,1], "
      "then expect to return true",
      () {
        final nums = [1, 2, 3, 1];
        expect(solution.containsDuplicate(nums), isTrue);
      },
    );

    test(
      "when nums = [1,2,3,4], "
      "then expect to return false",
      () {
        final nums = [1, 2, 3, 4];
        expect(solution.containsDuplicate(nums), isFalse);
      },
    );

    test(
      "when nums = [1,1,1,3,3,4,3,2,4,2], "
      "then expect to return true",
      () {
        final nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
        expect(solution.containsDuplicate(nums), isTrue);
      },
    );
  });
}
