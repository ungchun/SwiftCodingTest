import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    
    var array: [Int] = []
    var result = 0
    
    for num in 1...number {
        var power = 0
        
        if num == 1 {
            power = 1
        } else if num == 2 {
            power = 2
        } else if num == 3 {
            power = 2
        } else {
            for i in 1...Int(sqrt(Double(num))) {
                if num % i == 0 {
                    if (i * i) == num {
                        power += 1
                    } else {
                        power += 2
                    }
                }
            }
        }
        array.append(power)
    }
    
//    print(array)
    
    result = array.reduce(0) { $0 + ($1 > limit ? power : $1) }
    return result
}

//print(solution(5, 3, 2))
print(solution(10, 3, 2))
