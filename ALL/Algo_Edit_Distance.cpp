#include <bits/stdc++.h>
using namespace std;

int min(int x, int y, int z) { 
    return min(min(x, y), z); 
}

int editDist(string str1, string str2) {
    int m = str1.length();
    int n = str2.length();
    
    vector<vector<int>> dp(m + 1, vector<int>(n + 1, 0));

    for (int i = 0; i <= m; i++) {
        for (int j = 0; j <= n; j++) {
            if (i == 0) {
                dp[i][j] = j;
            } else if (j == 0) {
                dp[i][j] = i;
            } else if (str1[i - 1] == str2[j - 1]) {
                dp[i][j] = dp[i - 1][j - 1];
            } else {
                dp[i][j] = 1 + min(dp[i][j - 1], dp[i - 1][j], dp[i - 1][j - 1]);
            }
        }
    }
    
    return dp[m][n];
}

int main() {   
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    string str1;
    string str2;
    
    cin >> str1 >> str2;

    cout << editDist(str1, str2);

    return 0;
}
