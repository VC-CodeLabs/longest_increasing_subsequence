#include <stdio.h>

int lengthOfLIS(int* nums, int numsSize) {
    if (numsSize == 0)
        return 0;

    int longestSubsequence[numsSize];
    for (int i = 0; i < numsSize; i++) 
        longestSubsequence[i] = 1;

    int maxLength = 1;
    for (int i = 1; i < numsSize; i++) { 
        for (int j = 0; j < i; j++) 
            if (nums[i] > nums[j])
                longestSubsequence[i] = longestSubsequence[i] > (longestSubsequence[j] + 1) ? longestSubsequence[i] : (longestSubsequence[j] + 1);
        maxLength = maxLength > longestSubsequence[i] ? maxLength : longestSubsequence[i];
    }
    
    return maxLength;
}

int main() {  
    int nums[] = {10, 9, 2, 5, 3, 7, 101, 18, 4, 5, 6};
    int length = sizeof(nums) / sizeof(nums[0]);

    int result = lengthOfLIS(nums, length);
    printf("Length of the longest increasing subsequence is: %d\n", result);

    return 0;
}