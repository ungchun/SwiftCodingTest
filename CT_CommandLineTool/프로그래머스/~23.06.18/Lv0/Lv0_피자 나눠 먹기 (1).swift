import Foundation

func solution(_ n:Int) -> Int {
    if n <= 7 {
        return 1
    } else {
        var result = n / 7
        if n % 7 > 0 {
            result += 1
        }
        return result
    }
}
