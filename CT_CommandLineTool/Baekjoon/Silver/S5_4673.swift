import Foundation

var array: [Int] = []
var tempValue = 0

for i in 0...10000 {
    tempValue = i + (String(i).map{ String($0)}.reduce(0){ $0 + Int($1)! })
    array.append(tempValue)
}

array = array.sorted()

for i in 0...10000 {
    if !array.contains(i) {
        print("\(i)")
    }
}
