import Foundation

func solution(_ n:Int) -> Int {
    var dp = [0,1,2]
    
    if n < 3 {
        return dp[n]
    }
    
    for _ in 3...n {
        dp.append((dp[dp.count-1] + dp[dp.count-2])%1234567)
    }
    return dp.last!
}

print(solution(1500))
