import Foundation

func solution(_ n:Int) -> Int
{
    var copyN = n

    let binary = String(copyN, radix: 2)
    let copyNCount = Array(binary).filter { $0 == "1"}.count

    copyN += 1

    var result = 0

    while true {
        if copyNCount == Array(String(copyN, radix: 2)).filter({ $0 == "1"}).count {
            result = copyN
            break
        }

        copyN += 1
    }

    return result

}
