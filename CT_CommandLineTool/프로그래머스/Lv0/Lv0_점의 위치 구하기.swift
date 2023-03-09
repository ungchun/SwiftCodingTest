import Foundation

func solution(_ dot:[Int]) -> Int {
    switch (dot[0], dot[1]) {
    case let (x,y) where x > 0 && y > 0:
        return 1
    case let (x,y) where x < 0 && y > 0:
        return 2
    case let (x,y) where x < 0 && y < 0:
        return 3
    case let (x,y) where x > 0 && y < 0:
        return 4
    default:
        break
    }
    return 0
}
