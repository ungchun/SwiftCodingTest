import Foundation

func solution(_ my_string:String) -> String {
    let alph = "abcdefghijklmnopqrstuvwxyz"
    
    return my_string.map {
        alph.contains($0) ? String($0).uppercased() : String($0).lowercased()
    }.joined()
}
