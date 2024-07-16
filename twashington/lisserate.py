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
    return seq


def get_lis(seq, pre=[]):
    if len(seq) == 0:
        return pre
    if len(seq) == 1:
        if len(pre) > 0 and seq[0] <= pre[-1]:
            return pre
        else:
            return pre + [seq[0]]
        # return pre if len(pre) > 0 and seq[0] <= pre[-1] else pre + [seq[0]]
    if len(pre) > 0 and seq[0] <= pre[-1]:
        return max([get_lis(seq[1:], pre), get_lis(seq[1:]), get_lis(seq[1:], [seq[0]])], key=len)
    else:
        return max([get_lis(seq[1:], pre + [seq[0]]), get_lis(seq[1:], pre)], key=len)
    # return max([get_lis(seq[1:], pre if len(pre) > 0 and seq[0] <= pre[-1] else pre + [seq[0]]), get_lis(seq[1:])], key=len)


def main():
    if debug:
        print(f"Test L I S algorithm")
    sequences = get_sequences()
    for sequence in sequences:
        lis = get_lis(sequence)
        print(f"Sequence: {sequence}. lis = {lis}. length = {len(lis)}")


if __name__ == "__main__":
    main()
