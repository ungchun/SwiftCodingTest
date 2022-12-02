import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    var x: Character?
    guard let firstCharacter = s.first else { return result }
    x = firstCharacter
    
    var xCount = 0
    var checkCount = 0
    
    s.forEach { char in
        if x == nil {
            x = char
        }
        
        if char == x {
            xCount += 1
        } else {
            checkCount += 1
        }
        
        if xCount == checkCount {
            xCount = 0
            checkCount = 0
            x = nil
            result += 1
        }
    }
    
    if x != nil {
        result += 1
    }
    
    return result
}

print(solution("aaabbaccccabba"))
