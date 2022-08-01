import Foundation

var array = [1,2,3,4,6,7,8,0]
array.sort()

var result = 0
for i in 0..<10 {
    if !array.contains(i) {
        result += i
    }
}

print("result \(result)")
