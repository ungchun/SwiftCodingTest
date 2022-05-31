import Foundation

let number = Int(readLine()!)!
var stackArray = [Int]()

for _ in 0..<number {
    let inputString = readLine()
    if (inputString!.contains("push")) {
        let startIdx: String.Index = inputString!.index(inputString!.startIndex, offsetBy: 5)
        let result = String(inputString![startIdx...])
        push(value: Int(result)!)
    } else if(inputString!.contains("pop")) {
        pop()
    } else if(inputString!.contains("size")) {
        size()
    } else if(inputString!.contains("empty")) {
        empty()
    } else {
        top()
    }
}

func push(value: Int) {
    stackArray.append(value)
}
func pop() {
    if stackArray.isEmpty {
        print("\(-1)")
    } else {
        print("\(stackArray[stackArray.count-1])")
        stackArray.remove(at: stackArray.count-1)
    }
}
func size() {
    print("\(stackArray.count)")
}
func empty() {
    if stackArray.isEmpty {
        print("\(1)")
    } else {
        print("\(0)")
    }
}
func top() {
    if stackArray.isEmpty {
        print("\(-1)")
    } else {
        print("\(stackArray[stackArray.count-1])")
    }
}

