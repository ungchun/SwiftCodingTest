import Foundation

let n = Int(readLine()!)!
var arr: [(start: Int, finish: Int)] = []
for _ in 0..<n {
	let line = readLine()!.split(separator: " ").map{Int(String($0))!}
	arr.append((line[0], line[1]))
}
arr.sort{$0.start < $1.start}
arr.sort{$0.finish < $1.finish}
var nowFinish = arr[0].finish
var cnt = 1

for i in 1..<arr.count {
	if arr[i].start >= nowFinish {
		nowFinish = arr[i].finish
		cnt += 1
	}
}

print(cnt)
