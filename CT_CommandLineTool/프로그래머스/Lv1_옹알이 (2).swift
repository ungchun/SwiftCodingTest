import Foundation

func solution(_ babbling:[String]) -> Int {
    
    var result = 0
    
    let checkArray = ["aya", "ye", "woo", "ma"]
    var tempValue = ""
    var lastWord = ""
    
    babbling.forEach { value in
        
        for i in value {
            tempValue += String(i)
            if checkArray.contains(tempValue) && tempValue != lastWord {
                lastWord = tempValue
                tempValue = ""
            }
        }
        if tempValue.isEmpty {
            result += 1
        }
        tempValue = ""
        lastWord = ""
    }
    return result
}

print(solution(["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"]))
