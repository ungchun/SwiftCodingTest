import Foundation

func solution(_ n:Int) -> [Int] {
    var result: [Int] = []
    var input = 1
    
    while input <= n {
        result.append(input)
        input += 2
    }
    
    return result
}
