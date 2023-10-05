import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
	var copyArr = arr
	let aCnt = arr[0].count
	let bCnt = arr.count
	
	if aCnt < bCnt {
		let temp = bCnt - aCnt
		for i in 0..<copyArr.count {
			for _ in 0..<temp {
				copyArr[i].append(0)
			}
		}
	} else {
		let temp = aCnt - bCnt
		let arr = Array(repeating: 0, count: aCnt)
		for _ in 0..<temp {
			copyArr.append(arr)
		}
	}
	
	return copyArr
}

print(solution([[572, 22, 37], [287, 726, 384], [85, 137, 292], [487, 13, 876]]))
