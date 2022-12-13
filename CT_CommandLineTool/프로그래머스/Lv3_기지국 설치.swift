import Foundation

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var answer = 0
    var start = 1
    
    for station in stations + [n+w+1] {
        let end = station - (w+1)
        let empty = Int(ceil(Double(end - start + 1) / Double(w*2+1)))
        answer += empty > 0 ? empty : 0
        start = station + w + 1
    }
    
    return answer
}
print(solution(11, [4, 11], 1))
