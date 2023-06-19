import Foundation

let number = Int(readLine()!)!
var nums = readLine()!.components(separatedBy: " ").map {Int($0)!}
var result = 0
var array = [Int]()

nums.sort()

for i in 0..<nums.count {
    result += nums[i]
    array.append(result)
}

print("\(array.reduce(0, +))")
