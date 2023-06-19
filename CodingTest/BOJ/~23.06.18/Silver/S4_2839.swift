import Foundation

var inputs = Int(readLine()!)

var result = 0
var check = false

if inputs! % 5 == 0 {
    result += (inputs! / 5)
    check = true
}

while inputs! >= 0 {
    inputs! -= 3
    result += 1
    if inputs! % 5 == 0 {
        result += (inputs! / 5)
        check = true
        break
    }
}

if check {
    print(result)
} else {
    print(-1)
}

