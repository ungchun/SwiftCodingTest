import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    let arr1 = str1.map {String($0)}
    let arr2 = str2.map {String($0)}
    var result = ""
    
    for i in 0..<str1.count {
        result += arr1[i]
        result += arr2[i]
    }
    
    return result
}
