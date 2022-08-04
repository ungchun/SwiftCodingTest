import Foundation

var array = [1,5,2,6,3,7,4]
var commands = [[2,5,3],[4,4,1],[1,7,3]]

//var temp = array

// -1

var result = [Int]()
for i in 0..<commands.count {
    var tempArr = [Int]()
    for j in commands[i][0]-1..<commands[i][1] {
        tempArr.append(array[j])
        tempArr.sort()
    }
    print(tempArr)
    result.append(tempArr[commands[i][2]-1])
}

print(result)
