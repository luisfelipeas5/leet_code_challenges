import 'package:leet_code_challenges/max_profit/max_profit.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Best Time to Buy and Sell Stock", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "when prices = [7,1,5,3,6,4], "
      "then expect to return 5",
      () {
        final prices = [7, 1, 5, 3, 6, 4];
        expect(solution.maxProfit(prices), 5);
      },
    );

    test(
      "when prices = [7,6,4,3,1], "
      "then expect to return 0",
      () {
        final prices = [7, 6, 4, 3, 1];
        expect(solution.maxProfit(prices), 0);
      },
    );
  });
}
