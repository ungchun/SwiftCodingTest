let numM = Int(readLine()!)!
let numN = Int(readLine()!)!
var isPrimeNumber = false
var isMinValueCheck = false
var check = false

var value = 0
var addResult = 0
var count = 0


for i in numM...numN {
    check = false
    if i == 1 {
        isPrimeNumber = true
    } else {
        for j in 2..<i {
            if i % j == 0 {
                check = true
            }
        }
        if !check {
            if !isMinValueCheck {
                isMinValueCheck = true
                value = i
            }
            addResult += i
        }
        isPrimeNumber = false
    }
}

if isPrimeNumber == true || addResult == 0{
    print("\(-1)")
} else {
    print("\(addResult)")
    print("\(value)")
}

