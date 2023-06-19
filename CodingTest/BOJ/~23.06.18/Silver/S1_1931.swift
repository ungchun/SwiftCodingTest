import Foundation

var number = Int(readLine()!)!
var array = [[Int]]()
var count = 1

for _ in 0..<number {
    let nums = readLine()!.components(separatedBy: " ").map {Int($0)!}
    array.append(nums)
}
array.sort{$0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1]}

var a = array[0][1]

for i  in 1..<array.count {
    if array[i][0] >= a {
        a = array[i][1]
        count += 1
    }
}

print("\(count)")
