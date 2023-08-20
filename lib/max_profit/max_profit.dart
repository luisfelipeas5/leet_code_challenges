class Solution {
  int maxProfit(List<int> prices) {
    if (prices.length <= 1) return 0;

    final minBeforeFirstIncreasePriceIndex =
        _getMinBeforeFirstIncreasePriceIndex(prices);

    final int firstSum = _getMinAndMaxAfterMinSum(
      prices,
      startIndex: minBeforeFirstIncreasePriceIndex,
    );
    final int secondSum = _getMaxAndMinBeforeAfterMaxSum(
      prices,
      startIndex: minBeforeFirstIncreasePriceIndex,
    );

    if (firstSum > secondSum) return firstSum;
    return secondSum;
  }

  int _getMinBeforeFirstIncreasePriceIndex(List<int> prices) {
    for (var i = 0; i < prices.length - 1; i++) {
      if (prices[i] < prices[i + 1]) {
        return i;
      }
    }
    return 0;
  }

  int _getMinAndMaxAfterMinSum(
    List<int> prices, {
    required int startIndex,
  }) {
    int minPrice = prices[startIndex];
    int maxAfterMinPrice = prices[startIndex];
    for (var i = startIndex + 1; i < prices.length; i++) {
      if (prices[i] <= minPrice) {
        minPrice = prices[i];
        maxAfterMinPrice = prices[i];
      } else if (prices[i] > maxAfterMinPrice) {
        maxAfterMinPrice = prices[i];
      }
    }

    return maxAfterMinPrice - minPrice;
  }

  int _getMaxAndMinBeforeAfterMaxSum(
    List<int> prices, {
    required int startIndex,
  }) {
    int maxPrice = prices[prices.length - 1];
    int minBeforeMaxPrice = prices[prices.length - 1];
    for (var i = prices.length - 2; i >= startIndex; i--) {
      if (prices[i] > maxPrice) {
        maxPrice = prices[i];
        minBeforeMaxPrice = prices[i];
      } else if (prices[i] < minBeforeMaxPrice) {
        minBeforeMaxPrice = prices[i];
      }
    }

    return maxPrice - minBeforeMaxPrice;
  }

}
