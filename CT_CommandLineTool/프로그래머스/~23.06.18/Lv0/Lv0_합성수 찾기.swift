import Foundation

func solution(_ n:Int) -> Int {
    
    var result = 0
    var count = 4
    let check = [2, 3, 5, 7]
    
    while count <= n {
        for i in check {
            if count % i == 0 && !check.contains(count) {
                result += 1
                break
            }
        }
        count += 1
    }
    
    return result
}
