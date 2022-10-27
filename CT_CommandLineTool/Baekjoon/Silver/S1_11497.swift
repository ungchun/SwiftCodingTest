import Foundation

var T = Int(readLine()!)!
while true {
    
    if T == 0 {
        break
    }
    var answer = 0
    let N = Int(readLine()!)!
    var array = Array(repeating: 0, count: N)
    
    let l = readLine()!.split(separator: " ").map {Int(String($0))!}
    
    array = l
    
    array.sort(by: <)
    print("array \(array)")
    
    
    for i in 0..<N-2 {
        answer = max(array[i+2]-array[i], answer);
    }
    
    print(answer)
   T -= 1
}

//1
//9
//37 43 2 16 40 10 32 29 41
