import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let NM = readLine()!.split(separator: " ").map {Int(String($0))!}
    let N = NM[0]
    var M = NM[1]

    var array = readLine()!.split(separator: " ").map {Int(String($0))!}
    
//    var tempCheck = 0
//    var tempCount = 0
    var result = 0
    while true {
//        print(array)
        if array[0] < array.max()! {
            let temp = array.removeFirst()
            array.append(temp)
            
            if M == 0 {
                M = array.count-1
            } else {
                M -= 1
            }
        } else {
            if M == 0 {
                print(result+1)
                break
            } else {
                result += 1
                array.removeFirst()
                M -= 1
            }
        }
    }
}

// 1 2 3 4
// 2

// 2 3 4 1
// 1

// 3 4 1 2
// 0

// 4 1 2 3
// 3

// 1 2 3
// 2
