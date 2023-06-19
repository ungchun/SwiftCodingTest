import Foundation

var array = [Int]()
var K = 0
var N = 0

let input = readLine()!.split(separator: " ").map {Int(String($0))!}

K = input[0]
N = input[1]

for _ in 0..<K {
    array.append(Int(readLine()!)!)
}

var first = 1
var last = array.max()!
var mid = 0

var result = 0

while first <= last {
    mid = (first + last) / 2
    
    var temp = 0
    for line in array {
        temp += line / mid
    }
    
    if temp >= N {
        if result < mid {
            result = mid
        }
        first = mid + 1
    } else {
        last = mid - 1
    }
}

print(result)
