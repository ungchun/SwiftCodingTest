import Foundation

func solution(_ my_string:String) -> String {
    var copyString = my_string
    var result = ""
    while !copyString.isEmpty {
        result += String(describing: copyString.popLast()!)
    }
    return result
}
