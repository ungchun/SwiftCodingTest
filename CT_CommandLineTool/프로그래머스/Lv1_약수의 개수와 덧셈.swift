import Foundation

let leftValue = 13
let rightValue = 17

var temp = 0
var result = 0

for i in leftValue...rightValue {
    temp = 0
    for j in 1...i {
        if i % j == 0 {
            temp += 1
        }
    }
    if temp % 2 == 0 {
        result += i
    } else {
        result -= i
    }
}

print(result)
