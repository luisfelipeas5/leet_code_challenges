//https://leetcode.com/problems/pascals-triangle/

typedef PascalTriangle = List<List<int>>;

class Solution {
  List<List<int>> generate(int numRows) {
    List<int> previousRow = [];
    final pascalTriangle = PascalTriangle.generate(
      numRows,
      (index) {
        List<int> row;
        if (index == 0) {
          row = [1];
        } else {
          row = _generateRow(index, previousRow);
        }
        previousRow = row;
        return row;
      },
    );
    return pascalTriangle;
  }

  List<int> _generateRow(int index, List<int> previousRow) {
    return List.generate(
      index + 1,
      (elementIndex) {
        final leftParent = previousRow.getOr(elementIndex - 1, 0);
        final rigthParent = previousRow.getOr(elementIndex, 0);
        return leftParent + rigthParent;
      },
    );
  }
}

extension ListExtension on List<int> {
  int getOr(int index, int or) {
    if (index < 0 || index >= length) return or;
    return this[index];
  }
}
