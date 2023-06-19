import Foundation

func solution(_ arr:[Int]) -> Int {

    var result = arr[0]

    while true {
        var resultCheck = true

        for i in 0..<arr.count {
            if result % arr[i] != 0 {
                resultCheck = false
                break
            }
        }

        if resultCheck {
            break
        }
        result += 1
    }
    return result
}

print(solution([2,6,8,14]))
