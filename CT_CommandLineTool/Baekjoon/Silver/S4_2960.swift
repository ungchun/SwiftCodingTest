import Foundation

let NK = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = NK[0]
let K = NK[1]

var array = Array(repeating: 0, count: N-1)

for i in 0..<N-1 {
    array[i] = i+2
}

//print(array)

var resultCount = 0
var result = 0

while !array.isEmpty {
    
    let min = array.min() // 2
    var count = 1
    while true {
        let checkValue = min! * count // 2 4
        
        if array.max()! < checkValue {
            break
        }
        
        if let index = array.firstIndex(where: {$0 == checkValue}) {
            array.remove(at: index)
            resultCount += 1 // 1
        }
        count += 1
        
        if resultCount == K {
            result = checkValue
            break
        }
//        print(array)
//        print("checkValue \(checkValue)")
    }
    
    if resultCount == K {
        break
    }
}

print(result)
