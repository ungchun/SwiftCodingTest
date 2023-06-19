import Foundation


let value = Int(readLine()!)!
var stringArray: [String] = []
var result = 0

for _ in 0..<value {
    let stringArray = Array(readLine()!.map({String($0)}))
    result += calString(value: stringArray)
}

print("\(result)")

func calString(value: Array<String>) -> Int {
    var tempValue = value[0]
    var tempArray: [String] = []
    for i in 1..<value.count {
        if value[i] == tempValue {
            
        } else {
            tempArray = Array(value[0...i-1])
            if tempArray.contains(value[i]) {
                return 0
            }
            tempValue = value[i]
        }
    }
    return 1
}
