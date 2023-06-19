import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var tempIndex = 0

    var array = [[Int]]()
    var inputArray = [Int]()
    var tempValue = 0

    for i in 0..<arr1.count {
        for j in 0..<arr2[0].count {

            while tempIndex != arr1[0].count {
                tempValue += arr1[i][tempIndex] * arr2[tempIndex][j]
                tempIndex += 1
            }
            inputArray.append(tempValue)
            tempIndex = 0
            tempValue = 0
        }
        tempIndex = 0
        tempValue = 0
        array.append(inputArray)
        inputArray = []
    }

    return array

}
