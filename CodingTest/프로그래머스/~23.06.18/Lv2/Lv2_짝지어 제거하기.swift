import Foundation

func solution(_ s:String) -> Int{
    var stack = [Character]()
    let arr = Array(s)
    
    for i in 0..<arr.count {
        if stack.isEmpty { stack.append(arr[i]) }
        else {
            if stack.last! == arr[i] {
                stack.removeLast()
            } else {
                stack.append(arr[i])
            }
        }
    }
    return stack.isEmpty ? 1 : 0
}
