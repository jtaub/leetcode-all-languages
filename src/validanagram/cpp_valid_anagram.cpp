#include <string>
#include <bits/ranges_algo.h>

using namespace std;

class Solution {
public:
  bool isAnagram(const string& s, const string& t) {
    int counts[26] = {};

    for (const auto c: s) {
      ++counts[c - 'a'];
    }

    for (const auto c: t) {
      --counts[c - 'a'];
    }

    return ranges::all_of(counts, counts + 26, [](const int count) {
      return count == 0;
    });
  }
};
