let number = Int(readLine()!)!
var count = 0

(1...number).forEach {
    var num = $0
    var before = Int.max
    var diff = Int.max
    var isHanSoo = true
    
    while num > 0 {
        let rem = num % 10
        if before == Int.max {
            before = rem
        } else {
            if diff == Int.max {
                diff = rem - before
            } else {
                if diff != rem - before {
                    isHanSoo = false
                    break
                }
            }
        }
        before = rem
        num /= 10
    }
    if isHanSoo {
        count += 1
    }
}
print(count)
