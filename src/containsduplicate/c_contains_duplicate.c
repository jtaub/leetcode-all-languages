#include <cstdlib>

#include "uthash.h"

struct hash_entry {
  int num;
  UT_hash_handle hh;
};

bool containsDuplicate(int* nums, int numsSize) {
  struct hash_entry* hash = NULL;

  for (int i = 0; i < numsSize; i++) {
    struct hash_entry* entry;
    HASH_FIND_INT(hash, &nums[i], entry);
    if (entry) {
      return true;
    }

    entry = (struct hash_entry*)malloc(sizeof(struct hash_entry));
    entry->num = nums[i];
    HASH_ADD_INT(hash, num, entry);
  }

  HASH_CLEAR(hh, hash);
  return false;
}
