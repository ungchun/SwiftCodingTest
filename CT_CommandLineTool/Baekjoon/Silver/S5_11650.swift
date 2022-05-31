let num = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<num {
    let nums = readLine()?.split(separator: " ").map {Int($0)!}
    var stringArray: [Int] = []
    stringArray.append(nums![0])
    stringArray.append(nums![1])
    arr.append(stringArray)
}
arr = arr.sorted(by: {$0[1] < $1[1]})
arr = arr.sorted(by: {$0[0] < $1[0]})
for i in 0..<arr.count {
    print("\(arr[i][0]) \(arr[i][1])")
}
