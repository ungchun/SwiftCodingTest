import Foundation

var n = 4
var keyinputs = [-1, 6, 2, 3, 4, 5, -1]

var result = [Int]()

while !keyinputs.isEmpty {
    
    let last = keyinputs.removeFirst()
    
    if last == -2 {
        result = []
    } else if last == -1 && !result.isEmpty {
        result.removeLast()
    } else {
        if n != result.count && last != -1 {
            result.append(last)
        }
    }
}



var stringResult = ""
var temp = result.map {String($0)}

if n > temp.count {
    temp = []
} else {
    for i in 0..<n {
        stringResult += temp[i]
    }
}

print(stringResult)

