import Foundation

func solution(_ numbers:[Int]) -> Int {
    
    var copyNumbers = numbers
    var firstMax = 0
    
    if let index = copyNumbers.firstIndex(where: {$0 == copyNumbers.max()}) {
        firstMax = copyNumbers.remove(at: index)
    }
    
    return firstMax * copyNumbers.max()!
}
