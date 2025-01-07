#include <uthash.h>

struct HashMap {
  int key;
  int value;
  UT_hash_handle hh;
};


/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int *twoSum(int *nums, int numsSize, int target, int *returnSize) {
  struct HashMap *numToIndex = NULL; 

  for (int i = 0; i < numsSize; i++) {
    int num = nums[i];
    struct HashMap *found;
    HASH_FIND_INT(numToIndex, &num, found);

    if (found) {
      *returnSize = 2;
      int *result = malloc(2 * sizeof(int));
      result[0] = found->value;
      result[1] = i;
      return result;
    }

    struct HashMap *entry = malloc(sizeof(struct HashMap));
    entry->key = target - num;
    entry->value = i;
    HASH_ADD_INT(numToIndex, key, entry); 
  }

  *returnSize = 0;
  return NULL;
}
