import Foundation

func solution(_ numbers:[Int]) -> Int {
    
    var copyNumbers = numbers
    
    copyNumbers.sort()
    
    var plusMax = 0
    var minusMax = 0
    
    plusMax = copyNumbers[copyNumbers.count-1] * copyNumbers[copyNumbers.count-2]
    minusMax = copyNumbers[0] * copyNumbers[1]
    
    return plusMax > minusMax ? plusMax : minusMax
}
