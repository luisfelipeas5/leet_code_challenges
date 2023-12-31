import 'dart:io';

import 'package:leet_code_challenges/valid_anagram/valid_anagram.dart';
import 'package:test/test.dart';

void main() {
  late Solution solution;

  group("Valid Anagram", () {
    setUp(() {
      solution = Solution();
    });

    test(
      "when s is 'anagram' and t is 'nagaram', "
      "then expect to return true",
      () {
        final String s = 'anagram';
        final String t = 'nagaram';
        expect(solution.isAnagram(s, t), isTrue);
      },
    );

    test(
      "when s is 'rat' and t is 'car', "
      "then expect to return false",
      () {
        final String s = 'rat';
        final String t = 'car';
        expect(solution.isAnagram(s, t), isFalse);
      },
    );

    test(
      "when s is too long and t is too long too, "
      "then expect to return true",
      () {
        final String s =
            File('test/valid_anagram/large_s.txt').readAsStringSync();
        print("s.length = ${s.length}");
        final String t =
            File('test/valid_anagram/large_t.txt').readAsStringSync();
        print("t.length = ${t.length}");

        final isAnagram = solution.isAnagram(s, t);
        expect(isAnagram, isTrue);
      },
    );
  });
}
