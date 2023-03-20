import Foundation

func solution(_ order:Int) -> Int {

    return String(order).map{$0}.filter {Int(String($0))! % 3 == 0 && Int(String($0))! != 0}.count
}
