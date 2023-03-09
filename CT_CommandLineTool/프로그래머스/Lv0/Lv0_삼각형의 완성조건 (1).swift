import Foundation

func solution(_ sides:[Int]) -> Int {
    var copySides = sides.sorted()
    let max = copySides.popLast()!

    return copySides[0]+copySides[1] > max ? 1 : 2
}
