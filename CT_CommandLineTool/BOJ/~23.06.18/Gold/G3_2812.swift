import Foundation

let t = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = t[0]
var k = t[1]

let number = Array(readLine()!)
var stack = [Character]()

for num in number {
    while k > 0 && !stack.isEmpty && stack.last! < num {
        stack.removeLast()
        k -= 1
    }
    stack.append(num)
}

(0..<k).forEach{_ in
    stack.removeLast()
}
print(String(stack))

