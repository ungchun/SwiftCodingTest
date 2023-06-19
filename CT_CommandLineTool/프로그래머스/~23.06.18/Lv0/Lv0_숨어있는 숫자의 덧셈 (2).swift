import Foundation

func solution(_ my_string:String) -> Int {
    
    var temp = ""
    var result = 0
    
    my_string.forEach {
        if $0.isNumber {
            temp += String($0)
        } else {
            if !temp.isEmpty {
                result += Int(temp)!
            }
            temp = ""
        }
    }
    
    if !temp.isEmpty {
        result += Int(temp)!
    }
    return result
}
