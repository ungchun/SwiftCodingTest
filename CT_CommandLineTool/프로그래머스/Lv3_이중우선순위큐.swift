import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue: [Int] = []
    
    for value in operations {
        let splitValue = value.split(separator: " ").map{String($0)}
        let firstValue = splitValue[0]
        let secondValue = splitValue[1]

        if firstValue == "I" {
            queue.append(Int(secondValue)!)
        } else { // D
            if !queue.isEmpty {
                if secondValue == "1" { // 1
                    if let index = queue.firstIndex(where: {$0 == queue.max()}) {
                        queue.remove(at: index)
                    }
                } else { // -1
                    if let index = queue.firstIndex(where: {$0 == queue.min()}) {
                        queue.remove(at: index)
                    }
                }
            }
        }
    }
    
    if queue.isEmpty {
        return [0,0]
    } else {
        return [queue.max() ?? 0, queue.min() ?? 0]
    }
}
