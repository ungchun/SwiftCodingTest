import Foundation

func solution(_ n: Int, _ slicer: [Int], _ num_list: [Int]) -> [Int] {
	guard slicer.count == 3 else { return [] }
	let a = slicer[0], b = slicer[1], c = slicer[2]

	switch n {
	case 1:
		return Array(num_list[0...b])
	case 2:
		return Array(num_list[a...])
	case 3:
		return Array(num_list[a...b])
	case 4:
		var cnt = 0
		var result: [Int] = []
		result.append(num_list[a])
		Array(num_list[a...b]).forEach { val in
			if cnt == c {
				cnt = 0
				result.append(val)
			}
			cnt += 1
		}
		return result
	default:
		return []
	}
}

print(solution(4, [1, 5, 2], [1, 2, 3, 4, 5, 6, 7, 8, 9]))
