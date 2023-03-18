import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var copyString = Array(my_string)
    
    let first = copyString[num1]
    let second = copyString[num2]
    
    copyString[num1] = second
    copyString[num2] = first

    
    return copyString.map{String($0)}.joined()
}
