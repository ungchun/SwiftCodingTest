import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var zeroCount = 0
    var count = 0
    var result = [Int]()
    
    for lotto in lottos {
        if lotto == 0 {
            zeroCount += 1
        } else {
            if win_nums.contains(lotto) {
                count += 1
            }
        }
    }
    switch count {
    case 6:
        result = [1, 1]
    case 5:
        if zeroCount != 0 {
            result = [(2 - zeroCount), 2]
        } else {
            result = [2, 2]
        }
    case 4:
        if zeroCount != 0 {
            result = [(3 - zeroCount), 3]
        } else {
            result = [3, 3]
        }
    case 3:
        if zeroCount != 0 {
            result = [(4 - zeroCount), 4]
        } else {
            result = [4, 4]
        }
    case 2:
        if zeroCount != 0 {
            result = [(5 - zeroCount), 5]
        } else {
            result = [5, 5]
        }
    default:
        if zeroCount != 0 {
            result = [(7 - (zeroCount + count)), 6]
        } else {
            result = [6, 6]
        }
        break
    }
    return result
}
