import Foundation

var nums = readLine()!.split(separator: " ").map {String($0)}
let endIndex = nums[1].index(before: nums[1].endIndex)
var last = nums[1][endIndex]
var tempValue = "\(nums[1])"
var count = 0

while true {
    if Int(tempValue)! < Int(nums[0])! {
        print(-1)
        break
    } else if Int(tempValue)! == Int(nums[0])! {
        print(count+1)
        break
    }
    
    if last == "1" {
        tempValue = String(tempValue.dropLast())
        count += 1
    } else {
        if Int(tempValue)! % 2 != 0 {
            print(-1)
            break
        }
        tempValue = String(describing: Int(tempValue)! / 2)
        count += 1
    }
    let endIndex = tempValue.index(before: tempValue.endIndex)
    last = tempValue[endIndex]
}
