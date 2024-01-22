import Foundation

func solution(_ edges: [[Int]]) -> [Int] {
	var answer = [0, 0, 0, 0]
	
	var exchangeCnts = [Int: [Int]]()
	
	for edge in edges {
		let a = edge[0]
		let b = edge[1]
		
		if exchangeCnts[a] == nil {
			exchangeCnts[a] = [0, 0]
		}
		if exchangeCnts[b] == nil {
			exchangeCnts[b] = [0, 0]
		}
		
		// 준 것, 받은 것 카운팅
		// a, b는 a가 b에 준 것, b가 a에게 받은 것
		exchangeCnts[a]![0] += 1
		exchangeCnts[b]![1] += 1
	}
	print(exchangeCnts)
	
	for (key, exchangeCnt) in exchangeCnts {
		print(exchangeCnt)
		// 그래프는 최소 2개 이상으로 준 것만 2개 이상인 정점이 생성점
		if exchangeCnt[0] >= 2 && exchangeCnt[1] == 0 {
			answer[0] = key
		}
		// 받은 것만 있는 정점의 개수는 막대 그래프의 개수
		else if exchangeCnt[0] == 0 && exchangeCnt[1] > 0 {
			answer[2] += 1
		}
		// 준 것, 받은 것 각각 2개 이상인 점의 개수는 8자 그래프의 개수
		else if exchangeCnt[0] >= 2 && exchangeCnt[1] >= 2 {
			answer[3] += 1
		}
	}
	
	// 전체 그래프 개수인 생성점의 준 것에서 2종류의 그래프를 빼면 도넛 그래프의 개수
	answer[1] = (exchangeCnts[answer[0]]![0] - answer[2] - answer[3])
	
	return answer
}

print(solution([[4, 11], [1, 12], [8, 3], [12, 7], [4, 2], [7, 11], [4, 8], [9, 6], [10, 11], [6, 10], [3, 5], [11, 1], [5, 3], [11, 9], [3, 8]]	))
