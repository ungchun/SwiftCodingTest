import Foundation

func solution(_ n:Int) -> Int {
    var copyN = n
    if copyN % 2 != 0 {
        copyN -= 1
    }
    
    var result = 0
    
    while copyN != 0 {
        result += copyN
        copyN -= 2
    }
    return result
}
