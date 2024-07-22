# Longest Increasing Subsequence O(n logn) solution using AI (just for inspiration beacuse I think it is very clever)
### Steps:
1. **Initialize an Empty List**:
   - Start with an empty list `tails` that will store the smallest possible tail elements for all increasing subsequences.

2. **Iterate Through Each Element**:
   - For each element in the array, use binary search to find its position in the `tails` list.
   - If the element is larger than all elements in `tails`, append it to `tails`.
   - Otherwise, replace the element at the found position with the current element.

3. **Binary Search**:
   - Binary search is used to find the first element in `tails` that is greater than or equal to the current element. This position indicates where the current element can extend or replace to form an increasing subsequence.

## Example

Given the array: `[10, 9, 2, 5, 3, 7, 101, 18, 4, 5, 6]`

### Initial State

- `tails = []` (empty initially)

### Processing Elements

1. **Element 10**: `tails = [10]`
2. **Element 9**: `tails = [9]`
3. **Element 2**: `tails = [2]`
4. **Element 5**: `tails = [2, 5]`
5. **Element 3**: `tails = [2, 3]`
6. **Element 7**: `tails = [2, 3, 7]`
7. **Element 101**: `tails = [2, 3, 7, 101]`
8. **Element 18**: `tails = [2, 3, 7, 18]`
9. **Element 4**: `tails = [2, 3, 4, 18]`
10. **Element 5**: `tails = [2, 3, 4, 5]`
11. **Element 6**: `tails = [2, 3, 4, 5, 6]`

The length of the `tails` list represents the length of the longest increasing subsequence, which is `5`.
