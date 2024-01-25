import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
	if b == 0 {
		return a
	} else {
		return gcd(b, a % b)
	}
}

let line = readLine()!.split(separator: " ").map{Int(String($0))!}
print(String(repeating: "1", count: gcd(line[0], line[1])))
