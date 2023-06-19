import Foundation

let input = Int(readLine()!)!
var caseInput = [Int]()
var array = [(Int,Int)](repeating: (0,0), count: 41)

for _ in 0..<input {
    caseInput.append(Int(readLine()!)!)
}

array[0] = (1,0)
array[1] = (0,1)

for i in 2..<array.count {
    array[i] = (array[i-1].0 + array[i-2].0, array[i-1].1 + array[i-2].1)
}

for i in caseInput {
    print("\(array[i].0) \(array[i].1)")
}
