import Foundation

func solution(_ n:Int) -> Int {
    
    var temp = 1
    var result = 0
    
    for i in 1...n {
        temp *= i
        if temp > n {
            break
        }
        result = i
    }
    
    return result
}
