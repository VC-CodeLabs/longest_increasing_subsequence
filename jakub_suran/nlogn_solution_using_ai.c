#include <stdio.h>

int binarySearch(int *tails, int size, int key) {
    int low = 0, high = size - 1;
    while (low <= high) {
        int mid = low + (high - low) / 2;
        if (tails[mid] == key) {
            return mid;
        } else if (tails[mid] < key) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }
    return low;
}

int lengthOfLIS(int *nums, int numsSize) {
    if (numsSize == 0) return 0;

    int tails[numsSize];
    int size = 0;

    for (int i = 0; i < numsSize; i++) {
        int pos = binarySearch(tails, size, nums[i]);
        tails[pos] = nums[i];
        if (pos == size) {
            size++;
        }
    }

    return size;
}

int main() {  
    int nums[] = {10, 9, 2, 5, 3, 7, 101, 18, 4, 5, 6};
    int length = sizeof(nums) / sizeof(nums[0]);

    int result = lengthOfLIS(nums, length);
    printf("Length of the longest increasing subsequence is: %d\n", result);

    return 0;
}