import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    
    var result = ""
    var count = 0
    
    cipher.forEach {
        count += 1
        
        if count == code {
            result += String($0)
            count = 0
        }
    }
    
    return result
}
