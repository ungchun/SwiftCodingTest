import Foundation

func solution(_ n:Int) -> Int
{
    var result = 0
    var copyN = n
    
    while true {
        if copyN == 0 {
            break
        }
        
        if copyN % 2 != 0 {
            copyN -= 1
            result += 1
        } else {
            copyN /= 2
        }
    }
    
    return result
}

print(solution(5000))
