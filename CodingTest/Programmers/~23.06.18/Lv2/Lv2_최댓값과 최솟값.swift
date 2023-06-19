import Foundation

func solution(_ s:String) -> String {
    let temp = Array(s)

    var tempValue = 2
    var resultArray = [Int]()
    
    var a = ""

    temp.forEach { value in
        if value == "-" {
            tempValue = 1
        } else {
            if value == " " {
                if tempValue == 1 {
                    resultArray.append(-Int(String(describing: a))!)
                    a = ""
                } else if tempValue == 2 {
                    resultArray.append(Int(String(describing: a))!)
                    a = ""
                }
                tempValue = 2
            } else {
                a += String(describing: value)
            }
        }
    }
    
    if tempValue == 1 {
        resultArray.append(-Int(String(describing: a))!)
    } else if tempValue == 2 {
        resultArray.append(Int(String(describing: a))!)
    }
    
    return "\(resultArray.min()!) \(resultArray.max()!)"
}

let s = "100 0"

let result = solution(s)
print(result)
