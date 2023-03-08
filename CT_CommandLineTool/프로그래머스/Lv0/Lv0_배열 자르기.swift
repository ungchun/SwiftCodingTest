import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return (num1...num2).map{numbers[$0]}
}
