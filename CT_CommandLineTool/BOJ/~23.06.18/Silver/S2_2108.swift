import Foundation

let N = Int(readLine()!)!
var array:[Int] = []

for _ in 0..<N {
    let input = Int(readLine()!)!
    array.append(input)
}

print(first(array: array))
print(second(array: array))
print(third(array: array))
print(four(array: array))



func first(array: [Int]) -> Int {
    
    return Int(round(Double(array.reduce(0, +)) / Double(array.count)))
}

func second(array: [Int]) -> Int {
    var copy = array
    copy.sort(by: <)
    
    return copy[copy.count/2]
}


func third(array: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    
    array.forEach { value in
        if dict[value] == nil {
            dict[value] = 1
        } else {
            dict[value]! += 1
        }
    }
    
//    print("dict \(dict)")
    let check = dict.values.max()
    var result = 0
    
    
    
//    print("dict.keys.map({$0 == check}).count \(dict.values.map{$0 == check}.count)")
    var checkCount = 0
    dict.values.map { value in
        if value == check {
            checkCount += 1
//            print("value \(value)")
        }
    }
    
    if checkCount >= 2 {
        result = dict.filter {$0.value == check}.keys.sorted{ $0 < $1 }[1]
    } else {
        result = dict.filter {$0.value == check}.keys.first!
    }
    return result
}


func four(array: [Int]) -> Int {
    let max = array.max()
    let min = array.min()
    return max! - min!
}
