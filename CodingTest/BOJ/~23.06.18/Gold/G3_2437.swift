import Foundation

let N = Int(readLine()!)

var values = readLine()!.split(separator: " ").map { Int(String($0))!}

values.sort()

var result = 0

for i in 0..<values.count {
    if values[i] > result+1 {
        break
    }
    result += values[i]
}

print(result+1)


