import Foundation

let brown = 10
let yellow = 2

let sum = brown + yellow
var w = 0
var h = 0

for i in 1..<sum {
    if sum % i == 0 {
        w = sum / i
        h = i
    }
    print("w \(w)")
    print("h \(h)")
    
    if (w-2) * (h-2) == yellow {
        break
    }
}

print(w, h)
