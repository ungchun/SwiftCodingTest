import Foundation

var nums = readLine()!.components(separatedBy: " ").map {Int($0)!}
var tempValue = 0
var lastValue = 0
var result = 0
var valueArray = [Int]()
tempValue = nums[1]
for _ in 0..<nums[0] {
    let value = Int(readLine()!)!
    valueArray.append(value)
}

while true {
    if tempValue == 0 {
        break
    }
    lastValue = valueArray.popLast()!
    if tempValue / lastValue != 0 {
        result += (tempValue / lastValue)
        tempValue %= lastValue
    }
}

print("\(result)")
