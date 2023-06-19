import Foundation

var N = Int(readLine()!)!
var inputs = [Int]()

for _ in 0..<N {
    let value = Int(readLine()!)!
    inputs.append(value)
}

inputs.sort()
print(inputs)

let first = inputs[0] + inputs[1]
var temp = first
var result = temp

for i in 2..<N {
    temp += inputs[i]
    result += temp
}

print(result)
