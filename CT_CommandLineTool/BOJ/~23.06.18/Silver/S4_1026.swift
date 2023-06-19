import Foundation

let number = Int(readLine()!)!
var result = 0
var minValue = 0
var maxValue = 0
var Anums = readLine()?.components(separatedBy: " ").map {Int($0)!}
var Bnums = readLine()?.components(separatedBy: " ").map {Int($0)!}
var minIndex = 0
var maxIndex = 0

while Anums!.count != 0 {
    minValue = Int.max
    maxValue = Int.max
    for i in 0..<Anums!.count {
        if minValue == Int.max {
            minValue = Anums![i]
            minIndex = i
        } else if minValue > Anums![i] {
            minValue = Anums![i]
            minIndex = i
        }
        if maxValue == Int.max {
            maxValue = Bnums![i]
            maxIndex = i
        } else if maxValue < Bnums![i] {
            maxValue = Bnums![i]
            maxIndex = i
        }
    }
    Anums!.remove(at: minIndex)
    Bnums!.remove(at: maxIndex)
    result += (minValue * maxValue)
}

print("\(result)")
