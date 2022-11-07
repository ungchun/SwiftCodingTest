import Foundation

for _ in 0..<Int(readLine()!)! {
    let _ = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    var total = 0
    var maxValue = arr.last!
    
    for value in arr.reversed() {
        if value >= maxValue {
            maxValue = value
        } else {
            total += (maxValue-value)
        }
    }
    print(total)
}
