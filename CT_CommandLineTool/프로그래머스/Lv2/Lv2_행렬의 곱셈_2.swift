import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {

    var result: [[Int]] = []

    var tempValue: [Int] = []
    var tempValue2 = 0

    for i in 0..<arr1.count {
        tempValue = []
        for j in 0..<arr2[0].count {
            for k in 0..<arr2.count {
                tempValue2 += (arr1[i][k] * arr2[k][j])
            }
            tempValue.append(tempValue2)
            tempValue2 = 0
        }
        result.append(tempValue)
    }
    return result
}

print(solution([[1, 2, 3], [4, 5, 6]] , [[1, 4, 4, 3], [2, 5, 2, 1], [3, 6, 4, 5]]))
print(solution([[1, 4], [3, 2], [4, 1]]  ,[[3, 3], [3, 3]] ))
print(solution([[2, 3, 2], [4, 2, 4], [3, 1, 4]], [[5, 4], [2, 4], [3, 1]]))
