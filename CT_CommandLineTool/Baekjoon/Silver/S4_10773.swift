import Foundation

let K = Int(readLine()!)!

var stack = [Int]()

for _ in 0..<K {
    let input = Int(readLine()!)!
    if input == 0 {
        stack.removeLast()
    } else {
        stack.append(input)
    }
}

print(stack.reduce(0, +))
