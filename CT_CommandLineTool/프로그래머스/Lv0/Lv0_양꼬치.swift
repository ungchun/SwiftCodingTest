import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let service = n / 10

    return n * 12000 + (k-service) * 2000
}
