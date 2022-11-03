import Foundation

let N = Int(readLine()!)!
var nArray = readLine()!.split(separator: " ").map {Int(String($0))!}
let M = Int(readLine()!)!
let mArray = readLine()!.split(separator: " ").map {Int(String($0))!}

nArray.sort()

for i in 0..<mArray.count {
    if binaryCheck(value: mArray[i]) {
        print(1, terminator: " ")
    } else {
        print(0, terminator: " ")
    }
}

func binaryCheck(value: Int) -> Bool {
    let tempArray = nArray
    var low = 0
    var high = tempArray.count - 1
    var mid = 0
    
    var resultCheck = false
    
    while low <= high {
        mid = (low + high) / 2
        
        if tempArray[mid] == value {
            resultCheck = true
            break
        } else {
            if tempArray[mid] < value {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
    }
    return resultCheck
}
