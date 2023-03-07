import Foundation

var absolutes = [4,7,12]
var signs = [true,false,true]
var result = 0
var tempValue = 0

for i in 0..<absolutes.count {
    tempValue = absolutes[i]
    if signs[i] == false {
        tempValue *= -1
    }
    result += tempValue
}
