import Foundation

func solution(_ my_string:String) -> String {
    
    let copyString = my_string.lowercased()

    return copyString.sorted().map{String($0)}.joined()
}
