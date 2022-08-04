import Foundation

let a = [1,2,3,4,5]
let b = [2,1,2,3,2,4,2,5]
let c = [3,3,1,1,2,2,4,4,5,5]

var answer = [1,2,3,4,5]

var dict: [Int: Int] = [:]

for i in 0..<answer.count {
    if answer[i] == a[i%a.count] {
        dict[1] = (dict[1] ?? 0) + 1
    }
    if answer[i] == b[i%b.count] {
        dict[2] = (dict[2] ?? 0) + 1
    }
    if answer[i] == c[i%c.count] {
        dict[3] = (dict[3] ?? 0) + 1
    }
}

let max = dict.values.max()!

var result = dict.filter {
    $0.value == max
}.keys.sorted()

print(result)
