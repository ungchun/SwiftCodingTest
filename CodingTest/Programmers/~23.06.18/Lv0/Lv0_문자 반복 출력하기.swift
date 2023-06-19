import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    
    var result = ""
    
    for str in my_string {
        result += String(repeating: str, count: n)
    }
    
    return result
}
