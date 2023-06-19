import Foundation

let inputs = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = inputs[0]
let M = inputs[1]

var H = readLine()!.split(separator: " ").map {Int(String($0))!}


var start = 0
var end = H.max()!

var result = 0

while start <= end {
    
    var sum = 0
    let mid = ( start + end ) / 2
    
    for i in H {
        if i - mid < 0 { continue }
        sum += ( i - mid )
    }
    
    if sum < M {
        end = mid - 1
    } else {
        start = mid + 1
    }
}


print("\(start - 1)")
