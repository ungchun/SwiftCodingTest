import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.filter { $0 == n }.count
}

print(solution([1, 1, 2, 3, 4, 5], 1))
