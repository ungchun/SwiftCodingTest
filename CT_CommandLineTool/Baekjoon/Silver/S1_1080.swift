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
