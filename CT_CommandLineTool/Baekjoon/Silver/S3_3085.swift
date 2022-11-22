import Foundation

let N = Int(readLine()!)!
var array:[[Character]] = Array(repeating: Array(repeating: "A", count: 51), count: N)
var result = 0

for i in 0..<N {
    array[i] = Array(readLine()!)
}

//print(array)

for i in 0..<N {
    for j in 0..<N-1 {
        array[i].swapAt(j, j+1)
        horizontalCount()
        verticalCount()
        array[i].swapAt(j, j+1)
        
        var temp = array[j][i]
        array[j][i] = array[j+1][i]
        array[j+1][i] = temp
        
        horizontalCount()
        verticalCount()
        
        temp = array[j][i]
        array[j][i] = array[j+1][i]
        array[j+1][i] = temp
        
    }
}

print(result)

func horizontalCount() {
    for i in 0..<N {
        var count = 1
        for j in 0..<N-1 {
            if array[i][j] == array[i][j+1] {
                count += 1
            } else {
                result = max(result, count)
                count = 1
            }
        }
        result = max(result, count)
    }
}

func verticalCount() {
    for i in 0..<N {
        var count = 1
        for j in 0..<N-1 {
            if array[j][i] == array[j+1][i] {
                count += 1
            } else {
                result = max(result, count)
                count = 1
            }
        }
        result = max(result, count)
    }
}
