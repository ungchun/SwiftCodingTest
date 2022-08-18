import Foundation

var d = [1,3,2,5,4]
let budget = 9
var temp = budget
var result = 0

d.sort()
print("d \(d)")
d.forEach {
    if $0 <= temp {
        temp -= $0
        result += 1
    }
}
print("result \(result)")
