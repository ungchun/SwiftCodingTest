import Foundation

let size = [[60, 50], [30, 70], [60, 30], [80, 40]]

var wMax = 0
var hArray = [Int]()
size.forEach {
    if $0[0] > $0[1] {
        hArray.append($0[1])
        if wMax < $0[0] {
            wMax =  $0[0]
        }
    } else {
        hArray.append($0[0])
        if wMax < $0[1] {
            wMax =  $0[1]
        }
    }
}

let result = wMax * Int(hArray.max()!)

print("@@ \(result)")
