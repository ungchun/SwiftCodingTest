import Foundation

let T = Int(readLine()!)!
var arr = Array(repeating: 0, count: T)
var a = 0
var b = 0
var c = 0
var d = 0

for _ in 0..<T {
	var temp = Int(readLine()!)!
	a = 0
	b = 0
	c = 0
	d = 0
	while temp != 0 {
		if temp / 25 >= 1 {
			a = temp / 25
			temp = temp - (25 * (temp / 25))
		} else if temp / 10 >= 1 {
			b = temp / 10
			temp = temp - (10 * (temp / 10))
		} else if temp / 5 >= 1 {
			c = temp / 5
			temp = temp - (5 * (temp / 5))
		} else {
			d = temp
			temp = 0
		}
	}
	print("\(a) \(b) \(c) \(d)")
}
