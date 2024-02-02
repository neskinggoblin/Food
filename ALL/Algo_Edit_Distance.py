def levenshtein_distance(str1, str2):
    cost = 1
    m = len(str1)
    n = len(str2)
    
    dp = [[0] * (n + 1) for _ in range(m + 1)]

    for i in range(m + 1):
        dp[i][0] = i * cost 

    for j in range(n + 1):
        dp[0][j] = j * cost 

    for i in range(1, m + 1):
        for j in range(1, n + 1):
            insert_cost = dp[i][j - 1] + cost
            delete_cost = dp[i - 1][j] + cost 
            replace_cost = dp[i - 1][j - 1] + (cost if str1[i - 1] != str2[j - 1] else 0)

            dp[i][j] = min(insert_cost, delete_cost, replace_cost)

    return dp[m][n]

str1 = input()
str2 = input()

result = levenshtein_distance(str1, str2)
print(result)
