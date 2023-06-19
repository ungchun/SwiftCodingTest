import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    
    var copyA = a.sorted(by: >)
    var copyB = b.sorted(by: >)
    
    var index = 0
    var result = 0
    
    print(copyA)
    print(copyB)
    
    for i in 0..<copyA.count {
        if copyA[i] < copyB[index] {
            index += 1
            result += 1
        }
    }
    
    return result
}

print(solution([5,1,3,7], [2,2,6,8]))
