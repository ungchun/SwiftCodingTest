import Foundation

let dict: [String: Int] = ["zero": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5, "six": 6, "seven": 7, "eight": 8, "nine": 9]

func solution(_ s:String) -> Int {
    var result = ""
    var tempString = ""
    for i in s {
        tempString += String(describing: i)
        if Int(tempString) != nil {
            result += tempString
            tempString = ""
        }
        else if dict.keys.contains(tempString) {
            let temp = String(describing: dict[tempString]!)
            result += temp
            tempString = ""
        }
    }
    return Int(result)!
}
