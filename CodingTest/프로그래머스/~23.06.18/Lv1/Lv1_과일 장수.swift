import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {

    var copyScore = score

    copyScore.sort(by: >)

    var result = 0
    for i in stride(from: 0, through: score.count-m, by: m) {
        result += copyScore[i...i+(m-1)].min()! * m
    }

    return result
}
