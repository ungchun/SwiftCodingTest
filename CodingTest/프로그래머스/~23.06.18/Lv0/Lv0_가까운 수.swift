import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    var result = 0
    var temp = 0
    
    array.forEach {
        var sub = abs(n-$0)
        if result == 0 {
            result = $0
            temp = sub
        }
        else if temp > sub {
            result = $0
            temp = sub
        }
        else if temp == sub {
            result = result > $0 ? $0 : result
        }
    }
    
    return result
}
