import Foundation

var number = Int(readLine()!)!

var nums = readLine()?.split(separator: " ").map {Int($0)!}
var addValue = 0.0

for i in 0..<nums!.count {
    addValue += (Double(nums![i]) / Double(nums!.max()!) * 100)
}
print("\(addValue / Double(number))")
