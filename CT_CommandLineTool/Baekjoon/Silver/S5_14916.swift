import Foundation

var value = Int(readLine()!)!
var answer = -1
var count = 0

while value >= 2 {
    if value % 5 == 0 {
        count += (value / 5)
        value = 0
        break
    } else {
        value -= 2
        count += 1
    }
}

if value != 0 {
    print(-1)
} else {
    print(count)
}
