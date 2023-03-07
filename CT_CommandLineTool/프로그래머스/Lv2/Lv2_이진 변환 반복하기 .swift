import Foundation

let s = "01110"
var copyString = s
var count = 0
var zeroCount = 0

var tempString = ""

while true {
    
    count += 1
    
    copyString.forEach { value in
        if value == "0" {
            zeroCount += 1
        } else {
            tempString += "1"
        }
    }
    
    let tempArray = Array(String(tempString.count, radix: 2))
    
    if tempArray.map{String($0)}.joined() == "1" {
        break
    }
    
    var result1 = tempArray.map{String($0)}.joined()
    
    
    copyString = String(describing: result1)
    tempString = ""
}

print("\(count) \(zeroCount)")
