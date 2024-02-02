def find_longest_subsequence(correct_order, student_answer):
    n = len(correct_order)
    m = len(student_answer)
    longest_subsequence = [0] * (m + 1)

    for i in range(1, n + 1):
        prev_longest = 0
        for j in range(1, m + 1):
            if correct_order[i - 1] == student_answer[j - 1]:
                longest_subsequence[j] = prev_longest + 1
            else:
                longest_subsequence[j] = max(longest_subsequence[j], longest_subsequence[j - 1])
            prev_longest = longest_subsequence[j]

    return longest_subsequence[m]

N, M = map(int, input().split())
correct_order = list(map(int, input().split()))
student_answers = [list(map(int, input().split())) for _ in range(M)]

scores = []
for answer in student_answers:
    score = find_longest_subsequence(correct_order, answer)
    scores.append(score)

for score in scores:
    print(score)
