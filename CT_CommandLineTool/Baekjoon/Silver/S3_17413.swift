import Foundation

let S = readLine()!

// array append 하면서 마지막에 reverse 하고 flatMap

var result = ""
var array: [Character] = []
var flagCheck = false

S.forEach { value in
    
    if value == "<" {
        if !array.isEmpty {
            result += array.reversed().map {String($0)}.reduce("", +)
            array = []
            array.append(value)
        } else {
            array.append(value)
        }
        flagCheck = true
    }
    else if value == ">" {
        array.append(value)
        result += array.map {String($0)}.reduce("", +)
        array = []
        flagCheck = false
    } else if value == " " {
        if flagCheck {
            array.append(value)
        } else {
            result += array.reversed().map {String($0)}.reduce("", +)
            result += " "
            array = []
        }
    } else {
        array.append(value)
    }
}

//print(array)
if !array.isEmpty {
    result += array.reversed().map {String($0)}.reduce("", +)
}
print(result)
