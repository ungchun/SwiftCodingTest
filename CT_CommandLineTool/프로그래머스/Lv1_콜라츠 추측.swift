func solution(_ num:Int) -> Int {
    var result = 0
    var copyNum = num
    var count = 0
    
    while copyNum != 1 && count != 500 {
        if copyNum % 2 == 0 {
            copyNum /= 2
        } else {
            copyNum = (copyNum * 3) + 1
        }
        result += 1
        count += 1
    }
    
    return count == 500 ? -1 : result
}
