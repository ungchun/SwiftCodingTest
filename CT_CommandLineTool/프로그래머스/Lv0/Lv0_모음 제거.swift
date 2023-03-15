import Foundation

func solution(_ my_string:String) -> String {
    
    var result = ""
    let array = ["a", "e", "i", "o", "u"]
    
    my_string.forEach {
        if !array.contains(String($0)) {
            result += String($0)
        }
    }
    return result
}
