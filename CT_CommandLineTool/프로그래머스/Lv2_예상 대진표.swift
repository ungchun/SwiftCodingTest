import Foundation

let n = 8
let a = 4
let b = 5

var copyN = n
var copyA = a
var copyB = b

var answer = 1

var check = copyA > copyB ? copyA : copyB

while true {

    if abs(copyA - copyB) == 1 && check % 2 == 0 { break }
        
    answer += 1
    
    if copyA % 2 != 0 {
        copyA += 1
    }
    copyA /= 2
    
    if copyB % 2 != 0 {
        copyB += 1
    }
    copyB /= 2
    
    check = copyA > copyB ? copyA : copyB
}

print(answer)
