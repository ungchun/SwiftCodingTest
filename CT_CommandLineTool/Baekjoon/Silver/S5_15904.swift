import Foundation

let inputValue = readLine()!

var CheckU = false
var CheckC = false
var CheckP = false
var CheckLast = false

inputValue.forEach { value in
    if !CheckU {
        if value == "U" {
            CheckU = true
        }
    } else if !CheckC {
        if value == "C" {
            CheckC = true
        }
    } else if !CheckP {
        if value == "P" {
            CheckP = true
        }
    } else {
        if value == "C" {
            CheckLast = true
        }
    }
}

if CheckU && CheckC && CheckP && CheckLast {
    print("I love UCPC")
} else {
    print("I hate UCPC")
}
