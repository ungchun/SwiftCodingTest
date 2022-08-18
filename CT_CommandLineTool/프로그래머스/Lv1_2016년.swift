import Foundation

let a = 5
let b = 24
let dayArray = ["FRI","SAT","SUN","MON","TUE","WED","THU",]

var tempValue = 0

for i in 1..<a {
    switch i {
    case 1,3,5,7,8,10,12:
        tempValue += 31
        break
    case 4,6,9,11:
        tempValue += 30
        break
    default:
        tempValue += 29
        break
    }
}

tempValue += b
tempValue -= 1
let temp = tempValue % 7

print(dayArray[temp])
