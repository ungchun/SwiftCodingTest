import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var stagesTest = stages

    stagesTest.sort()

    var testArr = Array(repeating: [Int: Double](), count: N)

    var testCount = 0
    var index = 0
    var beforeValue = 0

    for i in 1...N {
        testCount = 0
        for j in index..<stagesTest.count {
            if i != stagesTest[j] {
                break
            }
            index += 1
            testCount += 1
        }
        testArr[i-1] = ([i : Double(Double(testCount) / Double(stagesTest.count - (beforeValue)))])
        beforeValue += testCount
    }

    testArr.sort {
        $0.values.first! > $1.values.first!
    }
    
    var result = [Int]()
    
    testArr.forEach {
        result.append($0.keys.first!)
    }
    
    return result
    
}
