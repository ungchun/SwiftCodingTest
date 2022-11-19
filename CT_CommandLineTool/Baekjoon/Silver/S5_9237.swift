import Foundation

let N = Int(readLine()!)!
var array = readLine()!.split(separator: " ").map {Int(String($0))!}

array.sort(by: >)

//print(array)

var tempArray: [Int] = []
tempArray.append(array[0])

var maxValue = array[0]
var count = 1

for i in 1..<array.count {
    maxValue -= 1
    maxValue = max(array[i], maxValue)
    count += 1
    
//    print("tempArray \(tempArray)")
//    print("maxValue \(maxValue)")
//    print()
}

print(count + maxValue + 1)

// 2 3 4 3 -> 7
// 4 3 3 2

// 39 38 9 35 39 20 -> 42
// 39, 39, 38, 35, 20, 9
