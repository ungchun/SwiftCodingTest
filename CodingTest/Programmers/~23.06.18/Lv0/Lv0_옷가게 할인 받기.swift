import Foundation

func solution(_ price:Int) -> Int {
    switch price {
    case 100000..<300000:
        return Int(Double(price) * 0.95)
    case 300000..<500000:
        return Int(Double(price) * 0.90)
    case 500000...:
        return Int(Double(price) * 0.80)
    default:
        return price
    }
}
