import Foundation

func solution(_ n:Int) -> Int {

    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else if n == 2 {
        return 2
    } else {
        // n > 3
        var array = [0, 1, 2]

        for _ in 3...n {
            array.append((array[array.count-2] + array[array.count-1]) % 1234567)
        }

        return array.last!
    }
}

print(solution(3))

// n == 7 -> 13 + 8

// n == 6 -> 13

// 1 1 1 1 1 1

// 1 1 1 1 2
// 1 1 1 2 1
// 1 1 2 1 1
// 1 2 1 1 1
// 2 1 1 1 1

// 1 1 2 2
// 1 2 1 2
// 2 1 1 2
// 1 2 2 1
// 2 1 2 1
// 2 2 1 1

// 2 2 2


// n == 5 -> 8

// 1 1 1 1 1

// 1 1 1 2
// 1 1 2 1
// 1 2 1 1
// 2 1 1 1

// 1 2 2
// 2 2 1
// 2 1 2

// ----------------

// n == 4 -> 5

// 1 1 1 1

// 1 1 2
// 1 2 1
// 2 1 1

// 2 2

// -------------

// n == 3 -> 3

// 1 1 1

// 1 2
// 2 1
