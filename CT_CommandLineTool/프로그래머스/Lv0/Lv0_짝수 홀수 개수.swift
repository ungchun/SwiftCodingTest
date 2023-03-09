import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let oddNum = num_list.filter {$0 % 2 == 0}.count
    let evenNum = num_list.filter {$0 % 2 != 0}.count
    return [oddNum, evenNum]
}
