var nums = Array(readLine()!).sorted(by: >)
var input = nums.reduce(0) {Int(String($0))! + Int(String($1))!}
if nums.last != "0" || input % 3 != 0 {
    print("\(-1)")
} else {
    print("\(String(nums))")
}
