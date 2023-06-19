import Foundation

var input = Array(readLine()!.map {Int(String($0))!})
input.sort(by: >)
var reuslt = ""
for i in 0..<input.count {
    reuslt += String(repeating: "\(input[i])", count: 1)
}
print(reuslt)
