import Foundation

var parens = Array(readLine()!).map { String($0) }
var stack = [String]()
var result = 0
var isCorrect = true
var temp = 1

for i in parens.indices {
    
    print("parens \(parens[i])")
    
    if parens[i] == "(" {
        temp *= 2
        stack.append(parens[i])
    } else if parens[i] == "[" {
        temp *= 3
        stack.append(parens[i])
    } else if parens[i] == ")" {
        if stack.isEmpty || stack.last != "(" {
            isCorrect = false
            break
        }
        
        if parens[i-1] == "(" {
            result += temp
        }
        stack.removeLast()
        temp /= 2
    } else if parens[i] == "]" {
        if stack.isEmpty || stack.last != "[" {
            isCorrect = false
            break
        }
        
        if parens[i-1] == "[" {
            result += temp
        }
        stack.removeLast()
        temp /= 3
    }
    
    print("stack \(stack)")
    print("temp \(temp)")
    print("result \(result)")
    print()
}

if !isCorrect || !stack.isEmpty {
    print(0)
} else {
    print(result)
}
