import Foundation

var input = readLine()!

var dict = [String: Int]()
var isEvenCount = 0

input.forEach { value in
    if dict[String(describing: value)] == nil {
        dict[String(describing: value)] = 1
    } else {
        dict[String(describing: value)]! += 1
    }
    isEvenCount += 1
}

var odd = [String]()

for key in dict.keys {
    if dict[key]! % 2 == 1 {
        odd.append(key)
    }
}

if odd.count > 1 { print("I'm Sorry Hansoo"); exit(0) }

var result = ""

if odd.count == 1 {
    result = odd[0]
    dict[result]! -= 1
}

for key in dict.keys.sorted(by: >) {
    while dict[key]! > 0 {
        result = key + result + key
        dict[key]! -= 2
    }
}

print(result)
