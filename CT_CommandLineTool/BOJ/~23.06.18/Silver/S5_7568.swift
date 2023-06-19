import Foundation

let number = Int(readLine()!)!
var dic: [String: Int] = [:]
var dicArray = [[String:Int]]()
var resultString = ""

for _ in 0..<number {
    let nums = readLine()?.components(separatedBy: " ").map{Int($0)!}
    dicArray.append(["weight":nums![0], "height":nums![1]])
}

for i in 0..<number {
    let tempDic = dicArray.filter {$0["weight"]! > dicArray[i]["weight"]! && $0["height"]! > dicArray[i]["height"]!}
    resultString += "\(tempDic.count + 1) "
}
print(resultString)
