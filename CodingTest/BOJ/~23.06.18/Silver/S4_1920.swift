import Foundation

let n = Int(readLine()!)!
var dict = [Int:Int]()

let arrayN = Array(readLine()!.split(separator: " ").map {Int(String($0))!})
arrayN.forEach { value in
    dict[value] = 1
}
let m = Int(readLine()!)!
let arrayM = Array(readLine()!.split(separator: " ").map {Int(String($0))!})

arrayM.forEach { value in
    if dict[value] == nil {
        print(0)
    } else {
        print(1)
    }
}
