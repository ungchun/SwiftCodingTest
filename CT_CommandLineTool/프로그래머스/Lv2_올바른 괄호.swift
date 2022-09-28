import Foundation

func solution(_ s:String) -> Bool
{
    var answer = true
    var count = 0
    
    for element in s {
        if element == "(" {
            count += 1
        } else if element == ")" && count <= 0 {
            answer = false
            break
        } else {
            count -= 1
        }
    }
    
    return count == 0 && answer
}
