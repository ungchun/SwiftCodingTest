import Foundation

let NM = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = NM[0]
let M = NM[1]

var map = Array(repeating: Array(repeating: "", count: M), count: N)

for i in 0..<N {
    map[i] = readLine()!.map {String($0)}
}

var result = 0
var check = false

for i in 0..<N {
    for j in 0..<M {
        if map[i][j] == "-" {
            if !check {
                result += 1
                check = true
            }
        } else {
            check = false
        }
    }
    check = false
}
for j in 0..<M {
    for i in 0..<N {
        if map[i][j] == "|" {
            if !check {
                result += 1
                check = true
            }
        } else {
            check = false
        }
    }
    check = false
}
print(result)
