import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    
    var result = 0
    
    s1.forEach {
        if s2.contains($0) {
            result += 1
        }
    }
    
    return result
}
