import Foundation

var N = Array(readLine()!).map {Int(String($0))}

var sixCheck = 0
var result = 0

var arrayDict: [[Int: Bool]] = [[:]]
var numSet: [Int: Bool] = [:]
numSet[0] = false
numSet[1] = false
numSet[2] = false
numSet[3] = false
numSet[4] = false
numSet[5] = false
numSet[6] = false
numSet[7] = false
numSet[8] = false
numSet[9] = false

arrayDict[0] = numSet
result += 1

N.forEach { value in
    if value == 6 {
        var addCheck = true
        for i in 0..<arrayDict.count {
            if arrayDict[i][value!] == false {
                arrayDict[i][value!] = true
                addCheck = false
                break
            } else if arrayDict[i][9] == false {
                arrayDict[i][9] = true
                addCheck = false
                break
            }
        }
        if addCheck {
            result += 1
            arrayDict.append(numSet)
            arrayDict[arrayDict.count-1][value!] = true
        }
    } else if value == 9 {
        var addCheck = true
        for i in 0..<arrayDict.count {
            if arrayDict[i][value!] == false {
                arrayDict[i][value!] = true
                addCheck = false
                break
            } else if arrayDict[i][6] == false {
                arrayDict[i][6] = true
                addCheck = false
                break
            }
        }
        if addCheck {
            result += 1
            arrayDict.append(numSet)
            arrayDict[arrayDict.count-1][value!] = true
        }
        
    } else {
        var addCheck = true
        for i in 0..<arrayDict.count {
            if arrayDict[i][value!] == false {
                arrayDict[i][value!] = true
                addCheck = false
                break
            }
        }
        if addCheck {
            result += 1
            arrayDict.append(numSet)
            arrayDict[arrayDict.count-1][value!] = true
        }
    }
}

print(result)
