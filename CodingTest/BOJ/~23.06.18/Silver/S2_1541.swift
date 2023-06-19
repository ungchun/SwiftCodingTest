var formula = readLine()!.split(separator: "-").map {String($0)}
let first = formula[0].split(separator: "+").map {Int(String($0))}
var result = 0
var temp = 0

for i in first {
    result += i!
}

for i in 1..<formula.count {
    let tempValue = formula[i].split(separator: "+").map {Int(String($0))}
    for j in 0..<tempValue.count {
        temp += tempValue[j]!
    }
    result -= temp
    temp = 0
}
print("\(result)")
