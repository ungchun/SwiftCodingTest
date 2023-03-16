import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    
    var time = 0
    var result = n
    
    while t != time {
        time += 1
        result *= 2
    }
    
    return result
}
