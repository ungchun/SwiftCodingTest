import Foundation

func solution(_ my_string:String) -> [Int] {
    
    var result: [Int] = []
    
    my_string.forEach {
        if $0.isNumber {
            result.append(Int(String($0))!)
        }
    }
    
    return result.sorted()
}
