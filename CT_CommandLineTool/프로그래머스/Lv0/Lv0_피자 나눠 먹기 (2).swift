import Foundation

func solution(_ n:Int) -> Int {
    
    var result = 6
    
    while result % n != 0 {
        result += 6
    }
    
    return result / 6
}
