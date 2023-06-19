import Foundation

let NM = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = NM[0]
let M = NM[1]

var inputs = readLine()!.split(separator: " ").map{Int(String($0))!}

inputs.sort()

var min = 0
var result = 0

for _ in 0..<M {
    min = inputs[0] + inputs[1]
    inputs[0] = min
    inputs[1] = min
    inputs.sort()
}

for i in 0..<inputs.count{
    result += inputs[i]
}
print(result)
