import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    var array = Array(repeating: -1, count: k)
    var result = [Int]()
    
    var index = k
    
    if index > score.count {
        index = score.count
    }
    
    for i in 0..<index {
        array[i] = score[i]
        result.append(array.filter({$0 != -1}).min()!)
    }
    
    for i in index..<score.count {
        var temp = 0
        
        if array.min()! < score[i] {
            if let index = array.firstIndex(where: {$0 == array.min()}) {
                array[index] = score[i]
            }
        }
        temp = array.min()!
        
        result.append(temp)
    }
    return result
}

print(solution(3, [10, 100, 20, 150, 1, 100, 200]))
print(solution(4, [0, 300, 40, 300, 20, 70, 150, 50, 500, 1000]))
print(solution(5, [2, 3, 1]))
