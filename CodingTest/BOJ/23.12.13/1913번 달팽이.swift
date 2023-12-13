import Foundation

let n = Int(readLine()!)!
let target = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
var now = (0,0)
var value = n*n
var addChk = true
var cnt = 0
var result = (0,0)

while true {
	if now == (n/2,n/2) {
		arr[n/2][n/2] = 1
		break
	}
	
	if cnt == 0 {
		if addChk {
			if now.0 + 1 >= n || arr[now.0 + 1][now.1] != 0 {
				cnt += 1
			} else {
				arr[now.0][now.1] = value
				now.0 += 1
				value -= 1
			}
		} else {
			if now.0 - 1 < 0 || arr[now.0 - 1][now.1] != 0 {
				cnt += 1
			} else {
				arr[now.0][now.1] = value
				now.0 -= 1
				value -= 1
			}
		}
	} else if cnt == 1 {
		if addChk {
			if now.1 + 1 >= n || arr[now.0][now.1 + 1] != 0 {
				cnt += 1
			} else {
				arr[now.0][now.1] = value
				now.1 += 1
				value -= 1
			}
		} else {
			if now.1 - 1 < 0 || arr[now.0][now.1 - 1] != 0 {
				cnt += 1
			} else {
				arr[now.0][now.1] = value
				now.1 -= 1
				value -= 1
			}
		}
	}
	
	if cnt == 2 {
		cnt = 0
		addChk.toggle()
	}
	
	if target == value {
		result.0 = now.0
		result.1 = now.1
	}
}

for i in 0..<arr.count {
	for j in 0..<arr[i].count {
		print(arr[i][j], terminator: " ")
	}
	print()
}
print("\(result.0+1) \(result.1+1)")
