import Foundation

var a = [1,2,3,4]
var b = [-3,-1,0,2]
var result = 0

for i in 0..<a.count {
    result += (a[i]*b[i])
}
print(result)
