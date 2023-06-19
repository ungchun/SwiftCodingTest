import Foundation

let number = Int(readLine()!)!
let nums = readLine()?.components(separatedBy: " ").map {Int($0)!}
var primeCheck = true
var count = 0

nums!.forEach {
    checkNumber(value: $0)
}

func checkNumber(value: Int) {
    primeCheck = true
    if value == 1 {
      primeCheck = false
    } else {
        for i in 2..<value {
            if value % i == 0 {
                primeCheck = false
                break
            }
        }
    }
    if primeCheck {
        count += 1
    }
}

print("\(count)")
