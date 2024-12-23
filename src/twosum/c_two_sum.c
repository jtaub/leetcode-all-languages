#include <uthash.h>

struct hashTable {
    int key;
    int value;
    UT_hash_handle hh;
};


/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int *twoSum(int *nums, int numsSize, int target, int *returnSize) {
    struct hashTable *map = NULL; 

    for (int i = 0; i < numsSize; i++) {
        int complement = target - nums[i];

        struct hashTable *found;
        HASH_FIND_INT(map, &complement, found);

        if (found) {
            *returnSize = 2;
            int *result = malloc(2 * sizeof(int));
            result[0] = found->value;
            result[1] = i;
            return result;
        }

        struct hashTable *entry = malloc(sizeof(struct hashTable));
        entry->key = nums[i];
        entry->value = i;
        HASH_ADD_INT(map, key, entry); 
    }

    *returnSize = 0;
    return NULL;
}
