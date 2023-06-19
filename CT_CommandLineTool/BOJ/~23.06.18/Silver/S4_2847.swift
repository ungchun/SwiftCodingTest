import Foundation

let N = Int(readLine()!)
var arr = [Int]()
var result = 0

for _ in 0..<N! {
    let value = Int(readLine()!)
    arr.append(value!)
}

arr.reverse()
var current = arr[0]

for i in 1..<arr.count {
    if current <= arr[i] {
        result += (arr[i] - current + 1)
        current = arr[i] - (arr[i] - current + 1)
    } else {
        current = arr[i]
    }
}
print(result)

