let number = Int(readLine()!)!
var checkValue = true
var leftCount = 0
var rightCount = 0

for _ in 0..<number {
    checkValue = true
    leftCount = 0
    rightCount = 0
    let string = Array(readLine()!).map{String($0)}
    
    for i in 0..<string.count {
        if string[i] == "(" {
            leftCount += 1
        } else {
            leftCount -= 1
        }
        if leftCount < 0 {
            checkValue = false
            break
        }
    }
    if leftCount != 0 {
        checkValue = false
    }
    if checkValue {
        print("YES")
    } else {
        print("NO")
    }
}
