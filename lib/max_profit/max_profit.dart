class Solution {
  int maxProfit(List<int> prices) {
    if (prices.length <= 1) return 0;

    int maxProfix = 0;
    int buyPrice = prices[0];

    for (var i = 1; i < prices.length; i++) {
      final int price = prices[i];
      if (price < buyPrice) {
        buyPrice = price;
        continue;
      }

      final int profit = price - buyPrice;
      if (profit > maxProfix) {
        maxProfix = profit;
      }
    }

    return maxProfix;
  }
}
