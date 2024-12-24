#include <uthash.h>

struct hashMap {
    int key;
    int value;
    UT_hash_handle hh;
};


/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int *twoSum(int *nums, int numsSize, int target, int *returnSize) {
    struct hashMap *num_to_index = NULL; 

    for (int i = 0; i < numsSize; i++) {
        int num = nums[i];
        struct hashMap *found;
        HASH_FIND_INT(num_to_index, &num, found);

        if (found) {
            *returnSize = 2;
            int *result = malloc(2 * sizeof(int));
            result[0] = found->value;
            result[1] = i;
            return result;
        }

        struct hashMap *entry = malloc(sizeof(struct hashMap));
        entry->key = target - num;
        entry->value = i;
        HASH_ADD_INT(num_to_index, key, entry); 
    }

    *returnSize = 0;
    return NULL;
}
