import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
  var copyBoard = board
  var basket: [Int] = []
  var count = 0
  
  for i in moves {
    for index in 0..<board.count {
      if copyBoard[index][i-1] != 0 {
        if basket.last == copyBoard[index][i-1] {
            count += 2
            basket.removeLast()
          } else {
            basket.append(copyBoard[index][i-1])
          }
          copyBoard[index][i-1] = 0
          break

        }
      }
  }
  return count
}
