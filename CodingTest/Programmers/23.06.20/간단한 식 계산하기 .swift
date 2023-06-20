import Foundation

func solution(_ binomial:String) -> Int {
    let arr = binomial.split(separator: " ")
    var o = 0
    var p = 0
    var temp = ""
    
    var chk = false
    
    var result = 0
    
    arr.forEach {
        if $0 == "+" {
            temp = "+"
        } else if $0 == "-" {
            temp = "-"
        } else if $0 == "*" {
            temp = "*"
        } else {
            if !chk {
                o = Int($0)!
                chk.toggle()
            } else {
                p = Int($0)!
            }
        }
    }
    
    if temp == "+" {
        result = o + p
    } else if temp == "-" {
        result = o - p
    } else {
        result = o * p
    }
    
    return result
}
