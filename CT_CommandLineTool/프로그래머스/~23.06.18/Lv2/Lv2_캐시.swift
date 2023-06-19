import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    var copyCities = cities.map {String($0).lowercased()}
    
    if cacheSize == 0 {
        return copyCities.count * 5
    } else {
        var result = 0
        var stack = [String]()
        for i in 0..<copyCities.count {
            if stack.count < cacheSize || stack.isEmpty {
                if stack.contains(copyCities[i]) {
                    if let index = stack.firstIndex(where: {$0 == copyCities[i]}) {
                        stack.remove(at: index)
                    }
                    stack.append(copyCities[i])
                    result += 1
                } else {
                    stack.append(copyCities[i])
                    result += 5
                }
            } else {
                if stack.contains(copyCities[i]) {
                    if let index = stack.firstIndex(where: {$0 == copyCities[i]}) {
                        stack.remove(at: index)
                    }
                    stack.append(copyCities[i])
                    result += 1
                } else {
                    stack.removeFirst()
                    stack.append(copyCities[i])
                    result += 5
                }
            }
        }
        return result
    }
}
