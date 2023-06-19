import Foundation

func solution(_ myString:String) -> [Int] {
    var result: [Int] = []
    var count = 0
    
    for char in myString {
        if char == "x" {
            result.append(count)
            count = 0
        } else {
            count += 1
        }
    }
    
    result.append(count)
    
    return result
}
