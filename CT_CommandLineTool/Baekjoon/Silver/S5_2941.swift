import Foundation

let string = readLine()
let str1 = string?.replacingOccurrences(of: "c=", with: "!")
let str2 = str1?.replacingOccurrences(of: "c-", with: "@")
let str3 = str2?.replacingOccurrences(of: "dz=", with: "?")
let str4 = str3?.replacingOccurrences(of: "d-", with: "#")
let str5 = str4?.replacingOccurrences(of: "lj", with: "$")
let str6 = str5?.replacingOccurrences(of: "nj", with: "%")
let str7 = str6?.replacingOccurrences(of: "s=", with: "^")
let str8 = str7?.replacingOccurrences(of: "z=", with: "&")

print("\(String(describing: str8!.count))")
