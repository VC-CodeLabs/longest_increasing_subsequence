"""
    T Washington
    Longest Increasing Subsequence
    Given an integer array nums, return the length of the longest strictly increasing subsequence .
"""
import time
import sys

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
    seq.append([8, -26, 20, -24, -22, 8, 6, 16, -20, 18, 44, -18, -16, 66, 42, 100, -14, -12, 82, 120, -10, 160, -4, 13, -10, 12, 11, -4, -3, -8, 10, -9, -22, 9, 8, -33, -21, -50, 7, 6, -41, -60, 5, -80, 1, 1, 11, 14])

    seq.append([8, -26, 20, -24, -22, 8, 6, 16, -20, 18, 44, -18, -16, 66, 42, 100, -14, -12, 82, 120, -10, 160, -4, 13, -10, 12, 11, -4, -3, -8, 10, -9, -22, 9, 8, -33, -21, -50, 7, 6, -41, -60, 5, -80, 1, 1, 11, 14, 10, 1, 5, 2, 6, 15, 14, 2, 15, 4, 1, 4, 11])
    seq.append([8, -26, 20, -24, -22, 8, 6, 16, -20, 18, 44, -18, -16, 66, 42, 100, -14, -12, 82, 120, -10, 160, -4, 13, -10, 12, 11, -4, -3, -8, 10, -9, -22, 9, 8, -33, -21, -50, 7, 6, -41, -60, 5, -80, 1, 1, 11, 14, 10, 1, 5, 2, 6, 15, 14, 2, 16, 4, 1, 4, 17, 7, 6, 15, 3, 3, 18, -13, 10])
    seq.append([8, -26, 20, -24, -22, 8, 6, 16, -20, 18, 44, -18, -16, 66, 42, 100, -14, -12, 82, 120, -10, 160, -4, 13, -10, 12, 11, -4, -3, -8, 10, -9, -22, 9, 8, -33, -21, -50, 7, 6, -41, -60, 5, -80, 1, 1, 11, 14, 10, 1, 5, 2, 6, 15, 14, 2, 16, 4, 1, 4, 17, 7, 6, 15, 3, 3, 18, -13, 10, 41, 60, -5, 80])
    seq.append([8, -26, 20, -24, -22, 8, 6, 16, -20, 18, 44, -18, -16, 66, 42, 100, -14, -12, 82, 120, -10, 160, -4, 13, -10, 12, 11, -4, -3, -8, 10, -9, -22, 9, 8, -33, -21, -50, 7, 6, -41, -60, 5, -80, 1, 1, 11, 14, 10, 1, 5, 2, 6, 15, 14, 2, 15, 4, 1, 4, 11, 7, 6, 15, 3, 3, 4, -13, 10, -12, -11, 4, 3, 8, -10, 9, 22, -9, -8, 33, 21, 50, -7, -6, 41, 60, -5, 80])
    a = [8, -26, 20, -24, -22, 8, 6, 16, -20, 18, 44, -18, -16, 66, 42, 100, -14, -12, 82, 120, -10, 160, -4, 13, -10, 12, 11, -4, -3, -8, 10, -9, -22, 9, 8, -33, -21, -50, 7, 6, -41, -60, 5, -80, 1, 1, 11, 14, 10, 1, 5, 2, 6, 15, 14, 2, 15, 4, 1, 4, 11, 7, 6, 15, 3, 3, 4, -13, 10, -12, -11, 4, 3, 8, -10, 9, 22, -9, -8, 33, 21, 50, -7, -6, 41, 60, -5, 80]
    seq.append([b - 12 for b in a] + a)
    long_list_1 = [b - 12 for b in a] + a + [b + 12 for b in a]
    seq.append(long_list_1)
    long_list_2 = [b - 12 for b in long_list_1] + long_list_1 + [b + 12 for b in long_list_1]
    seq.append(long_list_2)
    long_list_3 = long_list_2 + [b + 35 for b in long_list_1]
    seq.append(long_list_3)
    seq.append([(-3 * (a * a) + 7 * a - 11) % (61*59-900) for a in range(1500)])
    seq.append([(-3 * (a * a) + 7 * a - 11) % (61*59-900) for a in range(2000)])
    seq.append([(-3 * (a * a) + 7 * a - 11) % (61*59-900) for a in range(2500)])
    return seq


def get_lis(sequence, prefix=[]):
    """
    get_lis uses recursion to get the longest increasing subsequence of an integer sequence

    NOTE: This one works correctly, though it hits a call stack limit on long enough sequences.

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
    if is_present_in_lookup(prefix, sequence):
        return get_lis_from_lookup(prefix, sequence)

    # Recursive cases
    if len(prefix) > 0 and sequence[0] <= prefix[-1]:
        # the first element is too low to be appended to the prefix,
        # but may (but doesn't need to) start its own prefix
        lis = max([get_lis(sequence[1:], prefix),
                    get_lis(sequence[1:]),
                    get_lis([i for i in sequence[1:] if i > sequence[0]], [sequence[0]])], key=len)
    else:
        # the first element may (but doesn't need to) be added to the prefix
        lis = max([get_lis([i for i in sequence[1:] if i > sequence[0]], prefix + [sequence[0]]),
                   get_lis(sequence[1:], prefix)], key=len)
    store_lis_in_lookup(lis, prefix, sequence)
    return lis


def store_lis_in_lookup(lis, prefix, sequence):
    if len(prefix) == 0:
        lookup[key_from(prefix, sequence)] = lis
    else:
        lookup[key_from(prefix, sequence)] = lis[(len(prefix) - 1):]
    # lookup[key_from(prefix, sequence)] = lis


def get_lis_from_lookup(prefix, sequence):
    if len(prefix) == 0:
        return lookup[key_from(prefix, sequence)]
    else:
        return prefix[:-1] + lookup[key_from(prefix, sequence)]
    # return lookup[key_from(prefix, sequence)]


def is_present_in_lookup(prefix, sequence):
    return key_from(prefix, sequence) in lookup.keys()


def key_from(prefix, sequence):
    if len(prefix) == 0:
        return str(sequence)
    else:
        return str([prefix[-1]] + sequence)
    # return str(sequence) + str(prefix)


def get_lis_iterative(sequence, prefix=[]):
    """
    get_lis_iterative won't use recursion to get the longest increasing subsequence of an integer sequence

    NOTE Actually it just avoids using the call stack from the operating system.
         And it is TOO SLOW. Don't use it until it's improved.

    :param sequence:  the sequence to find a longest increasing subsequence of
    :return:
    """
    lis_stack = [(sequence, prefix)]
    lis = []
    candidate = []

    while len(lis_stack) > 0:
        candidate = []
        sequence, prefix = lis_stack[-1]
        lis_stack = lis_stack [:-1]

        # Base cases
        if len(sequence) == 0:
            candidate = prefix
        elif len(sequence) == 1:
            if len(prefix) > 0 and sequence[0] <= prefix[-1]:
                candidate = prefix
            else:
                candidate = prefix + [sequence[0]]

        # Look up values if they exist
        elif is_present_in_lookup(prefix, sequence):
            candidate = get_lis_from_lookup(prefix, sequence)

        # Recursive cases
        elif len(prefix) > 0 and sequence[0] <= prefix[-1]:
            # the first element is too low to be appended to the prefix,
            # but may (but doesn't need to) start its own prefix
            lis_stack.append((sequence[1:], prefix))
            lis_stack.append((sequence[1:], []))
            lis_stack.append(([i for i in sequence[1:] if i > sequence[0]], [sequence[0]]))
        else:
            # the first element may (but doesn't need to) be added to the prefix
            lis_stack.append(([i for i in sequence[1:] if i > sequence[0]], prefix + [sequence[0]]))
            lis_stack.append((sequence[1:], prefix))

        if len(candidate) > 0:
            lis = max(candidate, lis, key=len)
            store_lis_in_lookup(candidate, prefix, sequence)
    return lis


def get_prunable_indices(sequence):
    return [(i, i+1) for i in range(len(sequence) - 1) if sequence[i] >= sequence[i+1]]


def get_decreasing_steps(sequence):
    return sum([1 for i in range(len(sequence) - 1) if sequence[i] >= sequence[i+1]])


def get_short_display(li):
    if len(str(li)) < 80:
        return str(li)
    else:
        disp = str(li)
        return f"{disp[:55]} ... {disp[-20:]}"


def main():
    global debug
    debug = False

    if debug:
        print(f"Recursion limit = {sys.getrecursionlimit()}")
        sys.setrecursionlimit(1500)

    if debug:
        run_tests()

    # put input sequence here
    input_sequence = [-10, 6, 7, 8, 1001, 80, 79, 10, 11, 1, 1000, 2, 3, -100, 4, -99, -1000, -1001, 55, 75, 8, -1, 20, 99, 100]

    start = time.time()
    output_lis = get_lis(input_sequence)
    end = time.time()
    print(f"{len(output_lis)}")
    print(f"Time taken = {end - start} ms")
    if debug:
        print(f"lis = {output_lis}. length of sequence = {len(input_sequence)}. time taken = {(end - start) / 1} ms")
        print(f"Time taken = {(end - start) / 1} ms")

    if debug:
        print(f"Size of lookup = {len(lookup)}")


def run_tests():
    global lookup
    sequences = get_sequences()
    for sequence in sequences:
        lookup = {}
        start = time.time()
        lis = get_lis(sequence)
        print(
            f"Sequence: {get_short_display(sequence)}. lis =           {lis}. length of sequence = {len(sequence)}. length of lis = {len(lis)}, time taken = {time.time() - start}")
        lookup = {}


if __name__ == "__main__":
    main()
