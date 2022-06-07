import Foundation

//let count = Int(readLine()!)!
//var array = [[Int]].init(repeating: [], count: count + 1)
//for _ in 1..<count {
//    let input = readLine()!.split(separator: " ").map { Int($0)! }
//    let first = input[0]
//    let second = input[1]
//    array[first].append(second)
//    array[second].append(first)
//}
//var queue = [Int]()
//var isChecked = [Bool].init(repeating: false, count: count + 1)
//var result = [Int].init(repeating: 0, count: count + 1)
//
//isChecked[1] = true
//queue.append(1)
//while !queue.isEmpty {
//    let element = queue.removeFirst()
//    for vertex in array[element] {
//        if !isChecked[vertex] {
//            isChecked[vertex] = true
//            queue.append(vertex)
//            result[vertex] = element
//        }
//    }
//}
//result.forEach { (value) in
//    if value == 0 {
//        return
//    }
//    print(value)
//}

//let N = Int(readLine()!)
//var graph = Array(repeating: [Int](), count: N!+1)
//var dict = [Int: Int]()
//var result = [Int](repeating: 0, count: N!+1)
//
//for _ in 0..<N!-1 {
//    let ab = readLine()!.split(separator: " ").map {Int(String($0))!}
//    let first = ab[0]
//    let second = ab[1]
//    graph[first].append(second)
//    graph[second].append(first)
//}
//
//
//BFS(start: 1)
//
//func BFS(start: Int) {
//    var visited = [Int]()
//    var queue = [start]
//    print(graph)
//    while !queue.isEmpty {
//        let node = queue.removeFirst()
//        print("node \(node)")
//        for value in graph[node] {
//            if !visited.contains(value) {
//                visited.append(value)
//                queue.append(value)
//                result[value] = node
//            }
//        }
//    }
//    for i in 2..<result.count {
//        print(result[i])
//    }
//}
