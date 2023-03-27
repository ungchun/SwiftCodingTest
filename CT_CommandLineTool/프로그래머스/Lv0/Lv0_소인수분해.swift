import Foundation

func solution(_ n:Int) -> [Int] {
    var num = n
    var result: Set<Int> = []
    var count = 2
    while num != 1 {
        if num % count == 0 {
            num = num / count
            result.update(with: count)
            count = 2
        } else {
            count += 1
        }
    }
    return Array(result).sorted()
}
