import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
	var ans = 0
	
	for i in (a>b ? b...a : a...b) {
		ans += i
	}
	
	return Int64(ans)
}
