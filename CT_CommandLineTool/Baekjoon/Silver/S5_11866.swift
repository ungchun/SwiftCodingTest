import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = input[0]
var K = input[1]

var removeArr: [Int] = []

var array = Array(1...N)
var count = 0


while !array.isEmpty {
    count += 1
//    print("array \(array)")
    if count == K {
        count = 0
        removeArr.append(array.removeFirst())
    } else {
        let temp = array.removeFirst()
        array.append(temp)
    }
}
print("<\(removeArr.map {String($0)}.joined(separator: ", "))>")
