import Foundation

func solution(_ citations:[Int]) -> Int {
    var tempCitations = [Int]()
    var result = [Int]()

    for i in 1...citations.count {
        tempCitations = citations.filter {$0 >= i}

        if tempCitations.count >= i {
            result.append(i)
        }
        tempCitations = []
    }
    return result.isEmpty ? 0 : result.max()!
}
