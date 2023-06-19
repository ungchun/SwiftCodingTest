import Foundation

let K = Int(readLine()!)!

var array = Array(repeating: 0, count: K)

for _ in 0..<K {
    let input = Int(readLine()!)!
    
    if input == 0 {
        array.removeLast()
    } else {
        array.append(input)
    }
}

print(array.reduce(0, +))
