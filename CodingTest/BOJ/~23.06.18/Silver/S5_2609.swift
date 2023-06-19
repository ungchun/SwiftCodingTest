import Foundation

var nums = readLine()?.components(separatedBy: " ").map{Int($0)!}
var min = 0
var max = 0

if nums![0] > nums![1] {
    max = nums![0]
    min = nums![1]
} else {
    max = nums![1]
    min = nums![0]
}

func GCD(min: Int, max: Int) -> Int {
    let remain = max % min
    if remain == 0 {
        return min
    } else {
        return GCD(min: remain, max: min)
    }
}

func LCM(min: Int, max: Int) -> Int {
    return min * max / GCD(min: min, max: max)
}

print("\(GCD(min: min, max: max))")
print("\(LCM(min: min, max: max))")

