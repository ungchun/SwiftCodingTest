import Foundation

func solution(_ s:String) -> String {
    
    var dict: [Character:Int] = [:]
    
    guard !s.isEmpty else { return "" }
    
    s.forEach {
        if dict[$0] == nil {
            dict[$0] = 1
        } else {
            if let value = dict[$0] {
                dict[$0] = value + 1
            }
        }
    }
    
    return dict.filter {$0.value == 1}.map {String($0.key)}.sorted().joined()
}
