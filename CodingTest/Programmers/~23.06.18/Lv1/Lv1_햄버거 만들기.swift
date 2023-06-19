import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var stack: [Int] = []
    var result = 0
    var count = 0
    
    for value in ingredient {
        stack.append(value)
        count = stack.count

        if stack.count < 4 {
            continue
        }
        
        // 테스트 12 -> 시간초과
        //        if stack[count-4..<count].map({String($0)}).reduce("", +) == "1231" {
        //            stack = Array(stack[0..<count-4])
        //            result += 1
        //        }
        
        if Array(stack[count-4..<count]) == [1, 2, 3, 1] {
            stack = Array(stack[0..<count-4])
            result += 1
        }
    }
    return result
}


// 테스트 3 ~ 9, 11 ~ 12 시간초과
//func solution(_ ingredient:[Int]) -> Int {
//    let copyIngredient = ingredient
//    var text = copyIngredient.map {String($0)}.reduce("", +)
//    var result = 0
//
//    while true {
//        if !text.contains("1231") {
//            break
//        }
//        if let range0 = text.range(of: "1231") {
//            let startWord = text[range0].startIndex
//            let endWord = text[range0].endIndex
//            let w0 = text[text.startIndex ..< startWord]
//            //            let w1 = text[startWord ..< endWord]
//            let w2 = text[endWord ..< text.endIndex]
//            text = String(w0)+String(w2)
//            result += 1
//        }
//    }
//    return result
//}

print(solution([2, 1, 1, 2, 3, 1, 2, 3, 1]))
