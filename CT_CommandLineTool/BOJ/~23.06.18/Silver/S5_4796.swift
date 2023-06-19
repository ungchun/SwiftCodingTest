import Foundation

var count = 0

while true {
    let nums = readLine()?.split(separator: " ").map {Int($0)!}
    if nums![0] == 0 && nums![1] == 0 && nums![2] == 0 {
        break
    }
    count += 1
    cal(L: nums![0], P: nums![1], V: nums![2], count: count)
}

func cal(L: Int, P: Int, V: Int, count: Int) {
    var val_1 = V % P
    if val_1 > L {
        val_1 = L
    }
    let val_2 = V / P
    let cal = (val_2 * L) + val_1
    print("Case \(count): \(cal)")
}
