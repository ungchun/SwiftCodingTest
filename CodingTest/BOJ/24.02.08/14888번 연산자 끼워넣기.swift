import Foundation

let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map{Int(String($0))!}
var minValue = Int.max
var maxValue = Int.min
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

func dfs(_ result: Int, _ depth: Int) {
	if depth == n {
		minValue = min(minValue, result)
		maxValue = max(maxValue, result)
		return
	}
	
	for j in 0..<arr.count {
		if arr[j] != 0 {
			arr[j] -= 1
			var result = result
			switch j {
			case 0: // +
				result += nums[depth]
			case 1: // -
				result -= nums[depth]
			case 2: // *
				result *= nums[depth]
			case 3: // /
				result /= nums[depth]
			default:
				break
			}
			dfs(result, depth+1)
			arr[j] += 1
		}
	}
}

dfs(nums[0], 1)
print(maxValue)
print(minValue)
