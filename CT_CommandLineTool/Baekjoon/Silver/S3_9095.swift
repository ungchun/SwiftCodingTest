import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 11)

dp[1] = 1
dp[2] = 2
dp[3] = 4

for _ in 0..<n {
    let input = Int(readLine()!)!
    if input == 1 {
        print(dp[1])
    } else if input == 2 {
        print(dp[2])
    } else if input == 3 {
        print(dp[3])
    } else {
        if dp[input] == 0 {
            for i in 4...input {
                dp[i] = dp[i-3] + dp[i-2] + dp[i-1]
            }
        }
        print(dp[input])
    }
}


