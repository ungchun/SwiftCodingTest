import Foundation

func solution(_ array:[Int]) -> Int {
    var copyArray = array.sorted()
    return copyArray[copyArray.count/2]
}
