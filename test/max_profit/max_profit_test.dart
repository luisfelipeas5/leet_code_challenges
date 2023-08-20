import 'dart:convert';
import 'dart:io';

import 'package:leet_code_challenges/max_profit/max_profit.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Best Time to Buy and Sell Stock /", () {
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

    test(
      "when prices = [2,1,2,0,1], "
      "then expect to return 1",
      () {
        final prices = [2, 1, 2, 0, 1];
        expect(solution.maxProfit(prices), 1);
      },
    );

    test(
      "when prices = [7,2,4,1], "
      "then expect to return 2",
      () {
        final prices = [7, 2, 4, 1];
        expect(solution.maxProfit(prices), 2);
      },
    );

    test(
      "when prices = [11,7,2,4,1], "
      "then expect to return 2",
      () {
        final prices = [11, 7, 2, 4, 1];
        expect(solution.maxProfit(prices), 2);
      },
    );

    test(
      "when prices = 'large price list', "
      "then expect to return 3",
      () {
        final pricesString =
            File('test/max_profit/large_prices.json').readAsStringSync();
        final List<dynamic> dynamicPrices = jsonDecode(pricesString)["prices"];
        final List<int> prices = dynamicPrices.cast<int>();
        expect(solution.maxProfit(prices), 3);
      },
    );

    test(
      "when prices = [5,7,2,7,3,3,5,3,0], "
      "then expect to return 5",
      () {
        final prices = [5, 7, 2, 7, 3, 3, 5, 3, 0];
        expect(solution.maxProfit(prices), 5);
      },
    );
  });
}
