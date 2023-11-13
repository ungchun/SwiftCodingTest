import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
	var result = Array(repeating: -1, count: targets.count)
	var zero = false
	
	for k in 0..<targets.count {
		var tempResult = 0
		for i in 0..<targets[k].count {
			var chk = Array(repeating: 0, count: keymap.count)
			let targetArr = Array(targets[k])
			for j in 0..<keymap.count {
				let keyArray = Array(keymap[j])
				if let index = keyArray.firstIndex(where: { $0 == targetArr[i] }) {
					chk[j] = index+1
				}
			}
			if chk.filter({ $0 != 0}).min() ?? 0 == 0 {
				zero = true
				break
			}
			
			tempResult += chk.filter { $0 != 0}.min() ?? 0
		}
		if zero {
			result[k] = -1
		} else if tempResult != 0 {
			result[k] = tempResult
		}
		zero = false
	}
	
	return result
}
