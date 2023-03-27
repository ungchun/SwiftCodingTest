import Foundation

func solution(_ array:[Int]) -> Int {
    
    var result = 0
    
    array.forEach {
        let char = String($0)
        char.forEach {
            if $0 == "7" {
                result += 1
            }
        }
    }
    
    return result
}
