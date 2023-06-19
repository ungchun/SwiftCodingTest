import Foundation

let inputValue = readLine()!

var result = ""
var tempCount = 0

for i in 0..<inputValue.count {
//    tempCount += 1
//    print("tempCount \(tempCount)")
//    print("inputValue \(inputValue.map({"\($0)"})[i])")
    if inputValue.map({"\($0)"})[i] == "." {
        while tempCount != 0 {
            if tempCount >= 4 {
                tempCount -= 4
                result += "AAAA"
            } else if tempCount >= 2 {
                tempCount -= 2
                result += "BB"
            } else {
                tempCount = -1
                break
            }
        }
        if tempCount == -1 {
            break
        }
        tempCount = 0
        result += "."
    } else {
        tempCount += 1
    }
    
}

//print("result \(result)")
//print("tempCount \(tempCount)")

if tempCount != -1 && tempCount != 0 {
    while tempCount != 0 {
        if tempCount >= 4 {
            tempCount -= 4
            result += "AAAA"
        } else if tempCount >= 2 {
            tempCount -= 2
            result += "BB"
        } else {
            tempCount = -1
            break
        }
    }
}

if tempCount == -1 {
    print(-1)
} else {
    print(result)
}
