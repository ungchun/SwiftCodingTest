import Foundation

let N = Int(readLine()!)!
var seat = Array(readLine()!)

var count = 0

seat.forEach { value in
    if value == "L" {
        count += 1
    }
}

var temp = N + 1 - (count/2)
    
print(min(N,temp))
