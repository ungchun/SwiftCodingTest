import Foundation

// 각 입력에 맞게 board 세팅한다. 인덱스 0일 때를 의미 없는 걸로 채워주면 편하다. (난 -1로 채웠다.)
// 치킨집(2)들을 배열에 저장하고, M개를 선택하는 경우를 조합으로 구한다.
// 전체 치킨조합(chickenCombi)을 돌면서, 집(1)일 때
// 그 치킨집(chickens)과 집(1) 사이의 chickenDistance를 구한다. 여러 chickenDistance가 나올텐데 그 중 min을 구한다.
// 마지막으로, 각 경우(chickens)의 치킨거리의 합(sum)을 저장하는 distances 중 최소값을 구해주면 된다.

let input = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = input[0]
let M = input[1]
var board: [[Int]] = Array(repeating: [], count: N+1)

func combination(_ array: [(Int, Int)], _ n: Int) -> [[(y: Int, x: Int)]] {
    var result:[[(Int, Int)]] = []
    if array.count < n { return result }

    func cycle(_ index: Int, _ now: [(Int, Int)]) {
        if now.count == n {
            result.append(now)
            return
        }
        
        for i in index..<array.count {
            cycle(i + 1, now + [array[i]])
        }
    }
    
    cycle(0, [])
    
    return result
}

for i in 1...N {
    board[i] = [-1] + readLine()!.split(separator: " ").map{Int(String($0))!}
}

var chicken: [(Int, Int)] = []

for y in 1...N {
    for x in 1...N {
        if board[y][x] == 2 {
            chicken.append((y, x))
        }
    }
}

let chickenCombination =  combination(chicken, M)
//print("chicken \(chicken)")
//print("chickenCombination \(chickenCombination)")

var distances: [Int] = []

for chickens in chickenCombination {
    var sum: Int = 0
    
    for y in 1...N {
        for x in 1...N {
            if board[y][x] == 1 {
                var chickenDistance: Int = Int.max
                for chicken in chickens {
                    let distanceY: Int = abs(y - chicken.y)
                    let distanceX: Int = abs(x - chicken.x)
                    chickenDistance = min(chickenDistance, distanceY + distanceX)
                }
                sum += chickenDistance
            }
        }
    }
    distances.append(sum)
}

print(distances.min()!)
