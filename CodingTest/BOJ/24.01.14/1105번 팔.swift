import Foundation

let lr = readLine()!.split(separator: " ").map{Int(String($0))!}
let l = lr[0], r = lr[1]

if String(l).count != String(r).count {
	print(0)
} else {
	let arrL = String(l).map{$0}
	let arrR = String(r).map{$0}
	var cnt = 0
	for i in 0..<arrL.count {
		if arrL[i] == arrR[i] {
			if arrL[i] == "8" && arrR[i] == "8" {
				cnt += 1
			}
		} else {
			break
		}
	}
	print(cnt)
}
