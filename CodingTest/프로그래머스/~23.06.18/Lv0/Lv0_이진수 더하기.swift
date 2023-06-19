import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    
    let copyOne = Int(String(bin1), radix: 2)!
    let copyTwo = Int(String(bin2), radix: 2)!

    return String((copyOne+copyTwo), radix: 2)
}
