import Foundation

func factorial(_ n: Int) -> Int {
	if n < 2 {
		return 1
	}
	return n * factorial(n-1)
}

let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nk[0], k = nk[1]
print(factorial(n) / (factorial(k) * factorial(n-k)))
