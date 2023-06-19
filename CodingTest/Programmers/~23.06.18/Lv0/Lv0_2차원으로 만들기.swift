import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    
    var temp: [Int] = []
    var count = 0
    var result: [[Int]] = []
    
    num_list.forEach {
        count += 1
        temp.append($0)
        if count == n {
            result.append(temp)
            temp = []
            count = 0
        }
    }
    
    return result
}
