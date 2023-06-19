import Foundation

func solution(_ before:String, _ after:String) -> Int {
    
    var copyAfter = Array(after)
    var copyBefore = Array(before)
    var result = 1
    
    copyAfter.sort()
    copyBefore.sort()
    
    for i in 0..<copyBefore.count {
        if copyBefore[i] != copyAfter[i] {
            result = 0
            break
        }
    }
    
    return result
}
