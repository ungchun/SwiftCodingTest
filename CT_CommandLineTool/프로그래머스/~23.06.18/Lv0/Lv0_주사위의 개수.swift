import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    let x = box[0]
    let y = box[1]
    let h = box[2]
    
    var width = x / n
    var height = 0
    var test = 0
    
    if y >= n {
        height = y / n
        
        if h >= n {
            test = h / n
            return width * height * test
        } else {
            return 0
        }
        
    } else {
        return 0
    }
}
