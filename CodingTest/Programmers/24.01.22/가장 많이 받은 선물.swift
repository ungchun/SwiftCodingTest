import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
	var result: [String: Int] = [:]
	var board: [String: [String:Int]] = [:]
	var score: [String: Int] = [:]
	
	gifts.forEach { value in
		let component = value.components(separatedBy: " ")
		let sender = component[0]
		let receiver = component[1]
		board[sender, default: [:]][receiver, default: 0] += 1
		score[sender, default: 0] += 1
		score[receiver, default: 0] -= 1
	}
	
	board.forEach { (key: String, value: [String : Int]) in
		friends.forEach { friend in
			if key != friend {
				
				if value[friend, default: 0] == 0 {
					if board[friend, default: [:]][key, default: 0] == 0 {
						// 서로 0
						if score[friend, default: 0] > score[key, default: 0] {
							result[friend, default: 0] += 1
							
							board[key, default: [:]][friend] = -1
							board[friend, default: [:]][key] = -1
						} else if score[friend, default: 0] < score[key, default: 0] {
							result[key, default: 0] += 1
							
							board[key, default: [:]][friend] = -1
							board[friend,default: [:]][key] = -1
						}
					}
				}
				
				if board[friend,default: [:]][key, default: 0] != -1, board[key, default: [:]][friend, default: 0] != -1 {
					if value[friend, default: 0] > board[friend, default: [:]][key, default: 0] {
						result[key, default: 0] += 1
						
						board[key, default: [:]][friend] = -1
						board[friend, default: [:]][key] = -1
					} else if value[friend, default: 0] < board[friend, default: [:]][key, default: 0] {
						result[friend, default: 0] += 1
						
						board[key, default: [:]][friend] = -1
						board[friend, default: [:]][key] = -1
					} else {
						// 점수가 같다
						if score[friend, default: 0] > score[key, default: 0] {
							result[friend, default: 0] += 1
							
							board[key, default: [:]][friend] = -1
							board[friend, default: [:]][key] = -1
						} else if score[friend, default: 0] < score[key, default: 0] {
							result[key, default: 0] += 1
							
							board[key, default: [:]][friend] = -1
							board[friend, default: [:]][key] = -1
						}
					}
				}
			}
		}
	}
	
	return result.values.max() ?? 0
}

print(solution(["muzi", "ryan", "frodo", "neo"], ["muzi frodo", "muzi frodo", "ryan muzi", "ryan muzi", "ryan muzi", "frodo muzi", "frodo ryan", "neo muzi"]))

print(solution(["joy", "brad", "alessandro", "conan", "david"], ["alessandro brad", "alessandro joy", "alessandro conan", "david alessandro", "alessandro david"]))

print(solution(["a", "b", "c"], ["a b", "b a", "c a", "a c", "a c", "c a"]))
