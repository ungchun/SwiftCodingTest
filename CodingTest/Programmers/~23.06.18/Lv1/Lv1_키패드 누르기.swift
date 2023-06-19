import Foundation


print(solution( [1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right"))

func solution(_ numbers:[Int], _ hand:String) -> String {
    var leftRow = 10
    var rightRow = 12
    var result = ""
    
    for i in numbers {
        var number = i
        if i == 0 {
            number = 11
        }
        if number == 1 || number == 4 || number == 7 {
            if number == 1 {
                leftRow = 1
            } else if number == 4 {
                leftRow = 4
            } else {
                leftRow = 7
            }
            result += "L"
        } else if number == 3 || number == 6 || number == 9 {
            if number == 3 {
                rightRow = 3
            } else if number == 6 {
                rightRow = 6
            } else {
                rightRow = 9
            }
            result += "R"
        } else {
            let minusLeft = abs(leftRow - number)
            let a = minusLeft / 3
            let b = minusLeft % 3
            let c = a+b
            
            let minusRight = abs(rightRow - number)
            let d = minusRight / 3
            let e = minusRight % 3
            let f = d+e
            
            if c == f {
                if hand == "left" {
                    result += "L"
                    leftRow = number
                } else {
                    result += "R"
                    rightRow = number
                }
                
            } else {
                if c > f {
                    result += "R"
                    rightRow = number
                } else {
                    result += "L"
                    leftRow = number
                }
                
            }

        }
    }
    return result
}
