import Foundation

func solution(_ my_string:String) -> String {
    
    var copyString = Array(my_string)
    var result: [String] = []
    
    copyString.forEach {
        if !result.contains(String($0)) {
            result.append(String($0))
        }
    }
    
    return result.joined()
}
