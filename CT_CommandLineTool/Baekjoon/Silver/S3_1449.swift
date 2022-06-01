import Foundation

var nums = readLine()!.split(separator: " ").map {Int(String($0))!}
let n = nums[0]
let l = nums[1]

var arr = readLine()!.split(separator: " ").map {Int(String($0))!}
arr.sort()
var result = 1
var tempNumber = arr[0]-1+l

for i in 1..<arr.count {
    if arr[i] > tempNumber {
        tempNumber = arr[i]-1+l
        result += 1
    }
}
print(result)

// 1 2 -> 2
// 0.5 - 1 - 1.5 - 2 - 2.5
// -1 + L

// 1 2 3 -> 1
// 0.5 - 1 - 1.5 - 2 - 2.5 - 3 - 3.5
