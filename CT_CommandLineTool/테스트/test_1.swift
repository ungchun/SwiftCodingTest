import Foundation

let height = [140, 21, 21, 32]
let width = [2, 1, 3, 7]

var noResult = 0 // 한권도 안 뺏을 때
var result = 0 // 뺏을 때

var dict: [Int: Int] = [:]

noResult = height.min()! * width.reduce(0, +)

for i in 0..<height.count {
    if dict[height[i]] != nil {
        if dict[height[i]]! > width[i] {
            dict[height[i]] = width[i]
        }
    }
    else {
        dict[height[i]] = width[i]
    }
}

print("dict \(dict)")

let maxValue = dict.values.max()
print("max \(maxValue!)")

let tempHeight = dict[maxValue!]

print(dict.filter { $0.value == maxValue }.keys.first!)
print(dict.filter { $0.key >= dict.filter { $0.value == maxValue }.keys.first! })

let test = dict.filter { $0.key >= dict.filter { $0.value == maxValue }.keys.first! }
result = test.keys.min()! * test.values.reduce(0, +)

print(result > noResult ? result : noResult)

// 한권도 안 뺏을 때 -> height min * width all add
// width 값에서 제일 큰거 -> height 값
