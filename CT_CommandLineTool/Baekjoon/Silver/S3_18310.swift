import Foundation

let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map {Int(String($0))!}

input.sort(by: <)


var result = input[(input.count-1)/2]

print(result)
