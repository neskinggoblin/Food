#include <bits/stdc++.h>
using namespace std;

using namespace std;

int find_longest_subsequence(int n, vector<int>& correct_order, vector<int>& answers) {
    vector<int> positions(n);
    for (int i = 0; i < n; i++) {
        positions[correct_order[i] - 1] = i;
    }
    
    vector<int> dp(n, 1);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < i; j++) {
            if (positions[answers[i] - 1] > positions[answers[j] - 1]) {
                dp[i] = max(dp[i], dp[j] + 1);
            }
        }
    }
    
    int max_length = 0;
    for (int i = 0; i < n; i++) {
        max_length = max(max_length, dp[i]);
    }
    
    return max_length;
}

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int N, M;
    cin >> N >> M;
    
    vector<int> correct_order(N);
    for (int i = 0; i < N; i++) {
        cin >> correct_order[i];
    }
    
    vector<int> scores;

    for (int i = 0; i < M; i++) {
        vector<int> answers(N);
        for (int j = 0; j < N; j++) {
            cin >> answers[j];
        }
        int score = find_longest_subsequence(N, correct_order, answers);
        scores.push_back(score);
    }

    for (int score : scores) {
        cout << score << endl;
    }

    return 0;
}
