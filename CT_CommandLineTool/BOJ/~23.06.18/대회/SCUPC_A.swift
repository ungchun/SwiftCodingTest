import Foundation

var bigdataCount = 0
var securityCount = 0
let N = Int(readLine()!)!

let input = Array(readLine()!)

var index = 0

while index < input.count {
    if input[index] == "s" {
        securityCount += 1
        index += 8
    } else {
        bigdataCount += 1
        index += 7
    }
}

var result = ""

result = bigdataCount == securityCount ? "bigdata? security!" : bigdataCount > securityCount ? "bigdata?" : "security!"

print(result)
