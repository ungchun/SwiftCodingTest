import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var result: [Int] = []
    
    var genrePlayTime: [String: Int] = [:]
    var songPlayTime: [String: [(Int, Int)]] = [:]
    
    for i in 0..<genres.count {
        let genre: String = genres[i]
        let play: Int = plays[i]
        
        if let value = genrePlayTime[genre] {
            genrePlayTime[genre] = value + play
        } else {
            genrePlayTime[genre] = play
        }
        
        if let value = songPlayTime[genre] {
            songPlayTime[genre] = value + [(play, i)]
        } else {
            songPlayTime[genre] = [(play, i)]
        }
    }
    let sortTime = genrePlayTime.sorted { $0.value > $1.value }
    
    sortTime.forEach {
        let sortedPlayTime = songPlayTime[$0.key]!.sorted { $0.0 > $1.0 }
        
        print("sortedPlayTime \(sortedPlayTime) 22")
        
        for i in 0..<sortedPlayTime.count {
            if i == 2 {
                break
            }
            
            result.append(sortedPlayTime[i].1)
        }
        
    }
    
    return result
}

print(solution(["pop", "classic", "classic", "classic", "pop"], [500, 600, 150, 800, 2500]))
