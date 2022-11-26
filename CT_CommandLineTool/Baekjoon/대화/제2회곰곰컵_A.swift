import Foundation

let N = Int(readLine()!)!
var result = 0

for _ in 0..<N {
    let input = readLine()!
    if input.split(separator: "-").last.map({Int($0)!})! <= 90 {
        result += 1
    }
}
print(result)
