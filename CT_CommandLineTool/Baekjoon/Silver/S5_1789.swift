import Foundation

var number = Int(readLine()!)!
var add = 0
var count = 0

for i in 1...number {
    if number - (add + i) < i+1 {
        count += 1
        break
    }
    add += i
    count += 1
}

print("\(count)")
