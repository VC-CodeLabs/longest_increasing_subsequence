"""
    T Washington
    Longest Increasing Subsequence
    Given an integer array nums, return the length of the longest strictly increasing subsequence .
"""
import time

debug = True
MIN = -10001


def get_answer_2():
    return "0"


def get_sequences():
    seq = []
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
    return seq


def get_lis_length(sequence, min_value=MIN):
    if len(sequence) < 1:
        return 0
    elif len(sequence) == 1:
        if sequence[0] <= min_value:
            return 0
        else:
            return 1
    # elif len(sequence) == 2:
    #     if sequence[0] <= min_value:
    #         return 1
    #     else:
    #         return 2
    if sequence[0] <= min_value:
        return max(get_lis_length(sequence[1:], min_value), get_lis_length(sequence[1:], sequence[0]))
    else:
        return max(get_lis_length(sequence[1:], min_value), 1 + get_lis_length(sequence[1:], sequence[0]))


def main():
    if debug:
        print(f"Test L I S algorithm")
    sequences = get_sequences()
    for sequence in sequences:
        #lis = get_lis_length(sequence)
        print(f"Sequence: {sequence}. lis length = {get_lis_length(sequence)}")


if __name__ == "__main__":
    main()
