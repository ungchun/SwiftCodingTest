import Foundation

let N = Int(readLine()!)!
var Anums = readLine()!.split(separator: " ").map {Int(String($0))!}
var Bnums = readLine()!.split(separator: " ").map {Int(String($0))!}

var ACheck = Anums.first
var BCheck = Bnums.first
var result = 0

var aIndex = 0
var bIndex = 0


while !Anums.isEmpty {
    for i in 0..<Anums.count {
        if ACheck! > Anums[i] {
            ACheck = Anums[i]
            aIndex = i
        }
        
        if BCheck! < Bnums[i] {
            BCheck = Bnums[i]
            bIndex = i
        }
    }
    result += (ACheck! * BCheck!)
    
    Anums.remove(at: aIndex)
    Bnums.remove(at: bIndex)
    
    aIndex = 0
    bIndex = 0
    
    ACheck = Anums.first
    BCheck = Bnums.first
}

print(result)
