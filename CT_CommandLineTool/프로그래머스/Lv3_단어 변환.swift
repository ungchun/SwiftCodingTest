import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    var result = 0
    
    if !words.contains(target) {
        return 0
    } else {
        var queue: [(String, Int)] = []
        var visited: [String] = []

        var count = 1

        for i in 0..<words.count {
            if isChecking(now: begin, word: words[i]) {
                queue.append((words[i], count))
            }
        }
        
        while !queue.isEmpty {
            let first = queue.removeFirst()
            
            if first.0 == target {
                result = first.1
                break
            }
            
            if !visited.contains(first.0) {
                visited.append(first.0)
                count = first.1 + 1
                for i in 0..<words.count {
                    if isChecking(now: first.0, word: words[i]) {
                        queue.append((words[i], count))
                    }
                }
            }
        }
        return result
    }
}

func isChecking(now: String, word: String) -> Bool {
    if now.count != word.count {
        return false
    }
    
    var count = 0
    
    let arrNow = Array(now)
    let arrWord = Array(word)
    
    for i in 0..<arrNow.count {
        if count > 1 {
            return false
        }
        
        if arrNow[i] != arrWord[i] {
            count += 1
        }
    }
    
    if count == 1 {
        return true
    } else {
        return false
    }
}

print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]))
