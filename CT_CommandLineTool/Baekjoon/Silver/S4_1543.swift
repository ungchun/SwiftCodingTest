import Foundation

let inputA = Array(readLine()!.map{String($0)})
let inputB = Array(readLine()!.map{String($0)})
var idx = 0
var check = true
var result = 0
var temp = 0
while true {
    if idx + inputB.count > inputA.count {
        break
    }
    temp = idx
    for i in 0..<inputB.count {
        if inputA[i + temp] != inputB[i] {
            check = false
            idx += 1
            break
        }
    }
    if check {
        result += 1
        idx += inputB.count
    } else {
        check = true
    }
}
print(result)
