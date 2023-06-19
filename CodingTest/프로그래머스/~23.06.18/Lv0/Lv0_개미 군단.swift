import Foundation

func solution(_ hp:Int) -> Int {
    var result = 0
    var copyHP = hp
    
    while true {
        if copyHP / 5 >= 1 {
            result += (copyHP/5)
            copyHP %= 5
        } else if copyHP / 3 >= 1 {
            result += (copyHP/3)
            copyHP %= 3
        } else {
            result += copyHP
            break
        }
    }
    
    return result
}
