import 'package:leet_code_challenges/pascal_triangle.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Pascal Triangle", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "given x = 5, "
      "when generate is called, "
      "then expect to return '[[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]'",
      () {
        expect(
          solution.generate(5),
          [
            [1],
            [1, 1],
            [1, 2, 1],
            [1, 3, 3, 1],
            [1, 4, 6, 4, 1],
          ],
        );
      },
    );

    test(
      "given x = 1, "
      "when generate is called, "
      "then expect to return '[[1]]'",
      () {
        expect(
          solution.generate(1),
          [
            [1],
          ],
        );
      },
    );
  });
}
