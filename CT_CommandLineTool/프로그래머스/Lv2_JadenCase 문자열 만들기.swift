import Foundation

func solution(_ s:String) -> String {
 
    let words = s.components(separatedBy: " ")
    var charaters = Array(repeating: [String](), count: words.count)
    var answer = Array(repeating: String(), count: words.count)
    for w in 0..<words.count {
        charaters[w] = words[w].map{String($0).lowercased()}
        if charaters[w] != [] {
        charaters[w][0] = charaters[w][0].uppercased()
        }
        answer[w] = charaters[w].joined(separator: "")
    }
 
    return answer.joined(separator: " ")
}
