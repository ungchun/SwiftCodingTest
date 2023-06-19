import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    
    var copyNum = String(num).map {$0}.map {Int(String($0))!}
    var resultIndex = -1
    
    if let index = copyNum.firstIndex(where: {$0 == k}) {
        resultIndex = index
    }
    
    return resultIndex == -1 ? -1 : resultIndex + 1
}
