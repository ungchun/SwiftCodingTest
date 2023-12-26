import Foundation

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
let mnk = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = mnk[0], n = mnk[1], k = mnk[2]

var arr = Array(repeating: Array(repeating: false, count: m), count: n)

var kArr = [[Int]]()

for _ in 0..<k {
	kArr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

kArr.forEach { values in
	for y in values[0]..<values[2] {
		for x in values[1]..<values[3] {
			arr[y][x] = true
		}
	}
}
var cnt = 0
var result = [Int]()
for y in 0..<n {
	for x in 0..<m {
		if arr[y][x] == false {
			arr[y][x] = true
			var queue = [(y,x)]
			
			while !queue.isEmpty {
				let node = queue.removeLast()
				cnt += 1
				
				for i in 0..<4 {
					let ny = node.0 + dy[i]
					let nx = node.1 + dx[i]
					
					if ny < 0 || nx < 0 || ny >= n || nx >= m {
						continue
					} else {
						if arr[ny][nx] == false {
							arr[ny][nx] = true
							queue.append((ny, nx))
						}
					}
				}
			}
			
			result.append(cnt)
			cnt = 0
		}
	}
}

print(result.count)
result.sorted(by: <).forEach { value in
	print(value, terminator: " ")
}
