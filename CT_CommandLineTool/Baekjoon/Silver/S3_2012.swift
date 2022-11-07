import Foundation

let N = Int(readLine()!)!
var result = 0

var array: [Int] = []

for _ in 0..<N {
    array.append(Int(readLine()!)!)
}

array.sort()

for i in 0..<N {
    result += (abs(array[i]-(i+1)))
}

print(result)
