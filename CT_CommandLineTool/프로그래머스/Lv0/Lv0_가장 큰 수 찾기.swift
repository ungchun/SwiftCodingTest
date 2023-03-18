import Foundation

func solution(_ array:[Int]) -> [Int] {
    
    let max = array.max()
    var resultIndex = 0
    
    if let index = array.firstIndex(where: {$0 == max}) {
        resultIndex = index
    }
    
    return [max!, resultIndex]
}
