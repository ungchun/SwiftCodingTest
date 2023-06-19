import Foundation

func makeMaxInteger(_ input: String) -> Int {
    return Int(input.replacingOccurrences(of: "5", with: "6")) ?? 0
}

func makeMinInteger(_ input: String) -> Int {
    return Int(input.replacingOccurrences(of: "6", with: "5")) ?? 0
}

let input = (readLine() ?? "").split { $0 == " " }.map { String($0) }

let min = makeMinInteger(input[0]) + makeMinInteger(input[1])
let max = makeMaxInteger(input[0]) + makeMaxInteger(input[1])

print("\(min) \(max)")
