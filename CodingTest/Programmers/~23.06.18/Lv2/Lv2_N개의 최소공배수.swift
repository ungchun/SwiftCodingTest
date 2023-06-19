import Foundation

func GCD(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : GCD(b, mod)
}

func LCM(_ a: Int, _ b: Int) -> Int {
    return a * b / GCD(a, b)
}


func solution(_ arr:[Int]) -> Int {
    
    var nLCM = LCM(arr[0], arr[1])
    
    for i in 2..<arr.count{
        nLCM = LCM(nLCM, arr[i])
    }
    
    return nLCM
}


print(solution([2,6,8,14]))
