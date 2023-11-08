import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

var array = Array(repeating: "*", count: a)

for _ in 0..<b {
	print(array.reduce("", +))
}
