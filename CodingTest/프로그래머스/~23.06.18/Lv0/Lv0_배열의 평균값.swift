import Foundation

func solution(_ numbers:[Int]) -> Double {
    let sumArray = numbers.reduce(0, +)
    return Double(sumArray) / Double(numbers.count)
}
