let number = Array(readLine()!).map {Int(String($0))!}

var checkNum = number.first
var count = 0
var circle = false

for i in 1..<number.count {
    if number[i] != checkNum {
        checkNum = number[i]
        if circle == false {
            count += 1
            circle = true
        } else {
            circle = false
        }
    }
}
print(count)
