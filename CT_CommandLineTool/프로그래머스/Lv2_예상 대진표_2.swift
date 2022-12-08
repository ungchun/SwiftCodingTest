import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var copyA = a
    var copyB = b
    var result = 1
    
    var check = copyA > copyB ? copyA : copyB
    
    while copyA < copyB ? (copyA+1 != copyB || check % 2 != 0) : (copyB+1 != copyA || check % 2 != 0) {
        if copyA % 2 == 0 {
            copyA /= 2
        } else {
            copyA = (copyA+1)/2
        }
        
        if copyB % 2 == 0 {
            copyB /= 2
        } else {
            copyB = (copyB+1)/2
        }
        
        check = copyA > copyB ? copyA : copyB
        
        result += 1
    }
    
    return result
}

print(solution(8, 4, 5))
