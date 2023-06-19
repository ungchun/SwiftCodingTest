import Foundation

func solution(_ n:Int) -> Int {
    let copyN = n

    if copyN == 0 {
        return 0
    }

    if copyN == 1 {
        return 1
    }

    var array = [0,1]

    while array.count <= copyN {
        array.append((array[array.count - 1] + array[array.count - 2]) % 1234567)
    }

    return array[copyN]
}
