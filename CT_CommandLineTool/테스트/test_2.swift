import Foundation

var rectangles = [[0,2,1,3], [1,2,2,5], [3,3,4,4], [4,1,6,3], [1,6,5,7], [5,5,7,6], [5,8,6,10]]

// y

var dict: [Int: Int] = [:]
var afterFirstResult = Array(repeating: Array(repeating: 0, count: 4), count: rectangles.count)
var afterFirsTemptResult = Array(repeating: Array(repeating: 0, count: 4), count: rectangles.count)
var afterSecondResult = Array(repeating: Array(repeating: 0, count: 4), count: rectangles.count)

for i in 0..<rectangles.count {
    let firstIndex = rectangles[i][0]  // x1
    let secondIndex = rectangles[i][2] // x2
    let subIndex = firstIndex...(secondIndex-1) // x2-x1
    
    var y1 = 0
    var y2 = 0
    
    if subIndex.count != 1 {
        var check = false
        var tempMaxValue = 0
        subIndex.forEach { value in
            if dict[value] != nil {
                tempMaxValue = dict[value]! > tempMaxValue ? dict[value]! : tempMaxValue
                check = true
            }
        }
        
        if check { // 뭔가 있다
            subIndex.forEach { value in
                dict[value] = tempMaxValue + (rectangles[i][3]-rectangles[i][1])
                y1 = tempMaxValue
                y2 = tempMaxValue + (rectangles[i][3]-rectangles[i][1])
            }
        } else {
            subIndex.forEach { value in
                dict[value] = rectangles[i][3]-rectangles[i][1]
            }
            y1 = 0
            y2 = (rectangles[i][3]-rectangles[i][1])
        }
    } else {
        let value = subIndex.first
        var tempMaxValue = 0
        var check = false
        if dict[value!] != nil {
            tempMaxValue = dict[value!]! > tempMaxValue ? dict[value!]! : tempMaxValue
            check = true
        }
        
        if check { // 뭔가 있다
            dict[value!] = tempMaxValue + (rectangles[i][3]-rectangles[i][1])
            y1 = tempMaxValue
            y2 = tempMaxValue + (rectangles[i][3]-rectangles[i][1])
        } else {
            dict[value!] = rectangles[i][3]-rectangles[i][1]
            y1 = 0
            y2 = (rectangles[i][3]-rectangles[i][1])
        }
    }
    
    let tempArray = [firstIndex, y1, secondIndex, y2]

    afterFirstResult[i] = tempArray
    
}

print("afterFirstResult \(afterFirstResult)")

var afterFirstStringResult: [String] = []

afterFirstResult.forEach { values in
    var printValue = ""
    values.forEach { value in
        printValue += String(describing: value)
        printValue += " "
    }
    printValue.removeLast()
    print("printValue \(printValue)")
    afterFirstStringResult.append(printValue)
}
print("afterFirstStringResult \(afterFirstStringResult)")

