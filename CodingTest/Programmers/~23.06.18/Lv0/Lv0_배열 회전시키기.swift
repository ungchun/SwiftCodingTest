import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    
    var copyNumbers = numbers
    
    if direction == "right" {
        let last = copyNumbers.removeLast()
        copyNumbers.insert(last, at: 0)
    } else {
        let last = copyNumbers.removeFirst()
        copyNumbers.append(last)
    }
    
    return copyNumbers
}
