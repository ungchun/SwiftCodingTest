import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    let rest = n % slice
    var result = n / slice
    result = rest == 0 ? result : result + 1
    return result
}
