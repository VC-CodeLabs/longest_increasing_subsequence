"""
    T Washington
    Longest Increasing Subsequence
    Given an integer array nums, return the length of the longest strictly increasing subsequence .
"""
import time

debug = True
MIN = -10001
lookup = {}


def get_answer_2():
    return "0"


def get_sequences():
    seq = []
    seq.append([10, 5, 12, 7, 8])
    seq.append([3, 2, 1])
    seq.append([10, 9, 2, 5, 3, 7, 101, 18])
    seq.append([1, 2, 3, 4, 5, 6, 7, 8, 9])
    seq.append([9, 8, 7, 6, 5, 4, 3, 2, 1])
    seq.append([5])
    seq.append([2, 2, 2, 2, 2])
    seq.append([1, 3, 2, 4, 3, 5])
    seq.append([10, 22, 9, 33, 21, 50, 41, 60, 80])
    seq.append([3, 4, -1, 0, 6, 2, 3])
    seq.append([4, 10, 4, 3, 8, 9])
    seq.append([10, 5, 11, 6, 12, 7, 1, 8, 2, 9, 3])
    seq.append([4, -13, 10, -12, -11, 4, 3, 8, -10, 9, 22, -9, -8, 33, 21, 50, -7, -6, 41, 60, -5, 80])
    seq.append([8, -26, 20, -24, -22, 8, 6, 16, -20, 18, 10, -9, -22, 9, 8, -33, -21, -50, 7, 6, -41, -60, 5, -80, 1, 1, 11, 14, 10, 1, 5, 2, 6, 15, 14, 2, 15, 4, 1, 4, 11, 7, 6, 15, 3, 3, 4, -13, 10, -12, -11, 4, 3, 8, -10, 9])
    seq.append(
        [8, -26, 20, -24, -22, 8, 6, 16, -20, 18, -10, -9, -22, 9, 8, -33, -21, -50, 7, 6, -41, -60, 5, -80, 1, 1, 11,
         14, 10, 1, 5, 2, 6, 15, 14, 2, 15, 4, 1, 4, 11, 7, 6, 15, 16, 17, 18, 19, 3, 3, 4, -13, 10, -12, -11, 4, 3, 8, -10, 9])

    # seq.append([8, -26, 20, -24, -22, 8, 6, 16, -20, 18, 44, -18, -16, 66, 42, 100, -14, -12, 82, 120, -10, 160, -4, 13, -10, 12, 11, -4, -3, -8, 10, -9, -22, 9, 8, -33, -21, -50, 7, 6, -41, -60, 5, -80, 1, 1, 11, 14, 10, 1, 5, 2, 6, 15, 14, 2, 15, 4, 1, 4, 11, 7, 6, 15, 3, 3, 4, -13, 10, -12, -11, 4, 3, 8, -10, 9, 22, -9, -8, 33, 21, 50, -7, -6, 41, 60, -5, 80])
    # a = [8, -26, 20, -24, -22, 8, 6, 16, -20, 18, 44, -18, -16, 66, 42, 100, -14, -12, 82, 120, -10, 160, -4, 13, -10, 12, 11, -4, -3, -8, 10, -9, -22, 9, 8, -33, -21, -50, 7, 6, -41, -60, 5, -80, 1, 1, 11, 14, 10, 1, 5, 2, 6, 15, 14, 2, 15, 4, 1, 4, 11, 7, 6, 15, 3, 3, 4, -13, 10, -12, -11, 4, 3, 8, -10, 9, 22, -9, -8, 33, 21, 50, -7, -6, 41, 60, -5, 80]
    # seq.append([b - 12 for b in a] + a)
    # seq.append([b - 12 for b in a] + a + [b + 12 for b in a])
    return seq


def get_lis(sequence, prefix=[]):
    """
        get_lis uses recursion to get the longest increasing subsequence of an integer sequence

    :param sequence: the sequence to find a longest increasing subsequence of
    :param prefix: prefix subsequence, used in the recursive case, for building increasing subsequences
    """
    # Base cases
    if len(sequence) == 0:
        return prefix
    if len(sequence) == 1:
        if len(prefix) > 0 and sequence[0] <= prefix[-1]:
            return prefix
        else:
            return prefix + [sequence[0]]

    # Look up values if they exist
    if str(sequence) + str(prefix) in lookup.keys():
        return lookup[str(sequence) + str(prefix)]

    # Recursive cases
    if len(prefix) > 0 and sequence[0] <= prefix[-1]:
        # the first element is too low to be appended to the prefix,
        # but may (but doesn't need to) start its own prefix
        lis = max([get_lis(sequence[1:], prefix),
                    get_lis(sequence[1:]),
                    get_lis(sequence[1:], [sequence[0]])], key=len)
    else:
        # the first element may (but doesn't need to) be added to the prefix
        lis = max([get_lis(sequence[1:], prefix + [sequence[0]]),
                   get_lis(sequence[1:], prefix)], key=len)
    lookup[str(sequence) + str(prefix)] = lis
    return lis


def get_lis_iterative(sequence):
    """
        get_lis_iterative won't use recursion to get the longest increasing subsequence of an integer sequence
    :param sequence:  the sequence to find a longest increasing subsequence of
    :return:
    """
    for i in range(len(sequence), -1):
        continue
    return []


def get_prunable_indices(sequence):
    return [(i, i+1) for i in range(len(sequence) - 1) if sequence[i] >= sequence[i+1]]


def get_lis_by_pruning(sequence):
    """
        get_lis_by_pruning will pinch numbers out of the sequence until a longest increasing subsequence emerges
    :param sequence: the sequence to find a longest increasing subsequence of
    :return:
    """
    prunable_indices = get_prunable_indices(sequence)
    if debug:
        print(f"prunable indices of {sequence}: {prunable_indices}")


def get_decreasing_steps(sequence):
    return sum([1 for i in range(len(sequence) - 1) if sequence[i] >= sequence[i+1]])


def main():
    if debug:
        print(f"Test L I S algorithm")
    sequences = get_sequences()
    for sequence in sequences:
        lis = get_lis(sequence)
        print(f"Sequence: {sequence}. lis = {lis}. length of sequence = {len(sequence)}.  length of lis = {len(lis)}. decreasing steps = {get_decreasing_steps(sequence)}")


if __name__ == "__main__":
    main()
