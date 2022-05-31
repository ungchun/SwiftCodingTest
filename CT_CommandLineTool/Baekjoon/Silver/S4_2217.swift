var number = Int(readLine()!)!
var array = [Int]()

for _ in 0..<number {
    let loap = Int(readLine()!)!
    array.append(loap)
}
array.sort(by: >)
var max = 0
var temp = 0
var min = 0

for i in 0..<array.count {
    for j in 0...i {
        if max == 0 {
            max = array[j] / (i+1)
        }
        if j == i {
            min = array[j]
        }
    }
    if max < (min * (i+1)) {
        max = (min * (i+1))
    }
}
print("\(max)")
