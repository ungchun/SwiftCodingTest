import Foundation

while let n = readLine() {
	var chk = 1
	var cnt = 1
	
	while chk % Int(n)! != 0 {
		chk *= 10
		chk += 1
		cnt += 1
		chk %= Int(n)!
	}
	print(cnt)
}
