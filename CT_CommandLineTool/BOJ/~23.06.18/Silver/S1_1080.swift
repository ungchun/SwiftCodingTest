import Foundation

let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
var changableBoard = Array(repeating: Array(repeating: 0, count: input[1]), count: input[0])
var targetBoard = Array(repeating: Array(repeating: 0, count: input[1]), count: input[0])
var count = 0

for i in 0..<input[0] * 2 {
    let row = Array(readLine()!).map {Int(String($0))!}
    if i < input[0] {
        changableBoard[i] = row
    } else {
        targetBoard[i-input[0]] = row
    }
}

changeBoard()
if changableBoard == targetBoard {
    print(count)
} else {
    print(-1)
}


func reverseBoard(_ board: inout [[Int]], _ row: Int, _ col: Int) {
    for r in row..<row+3 {
        for c in col..<col+3 {
            board[r][c] = board[r][c] == 0 ? 1 : 0
        }
    }
}

func changeBoard() {
    if input[0] < 3 || input[1] < 3 { return }
    
    for r in 0...input[0]-3 {
        for c in 0...input[1]-3 {
            if changableBoard[r][c] != targetBoard[r][c] {
                reverseBoard(&changableBoard, r, c)
                count += 1
            }
        }
    }
    
}

// 성훈 방법
import Foundation

let NM = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = NM[0]
let M = NM[1]

var changedArr = Array(repeating: Array(repeating: 0, count: M), count: N)
var targetArr = Array(repeating: Array(repeating: 0, count: M), count: N)

for i in 0..<(N*2) {
    let nums = Array(readLine()!.map {Int(String($0))!})
    if i < N {
        changedArr[i] = nums
    } else {
        targetArr[i-N] = nums
    }
}

var result = 0

if N < 3 || M < 3 {
    print(-1)
} else {
    for r in 0...N-3 {
        for c in 0...M-3 {
            if changedArr[r][c] != targetArr[r][c] {
                
                for i in r..<r+3 {
                    for j in c..<c+3 {
                        changedArr[i][j] = changedArr[i][j] == 1 ? 0 : 1
                    }
                }
                
                result += 1
                if changedArr == targetArr {
                    break
                }
                
            }
        }
    }
    if changedArr == targetArr {
        print(result)
    } else {
        print(-1)
    }
}


