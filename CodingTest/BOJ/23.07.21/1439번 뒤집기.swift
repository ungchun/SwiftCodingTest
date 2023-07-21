import Foundation

let S = readLine()!

let firstSplit = S.split(separator: "0")
let secondSplit = S.split(separator: "1")

print(firstSplit.count > secondSplit.count ? secondSplit.count : firstSplit.count)
