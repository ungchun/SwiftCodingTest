import Foundation

func solution(_ n:Int) -> Int
{
    var copyN = n
    var result = 1

    while copyN  != 1 {
        if copyN  % 2 != 0 {
            result += 1
            copyN  -= 1
        } else {
            copyN /= 2
        }
    }

    return result

}
