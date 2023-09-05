import Foundation

let inp = readLine()!.split(separator: " ").map {Int(String($0))!}
var N = inp[0], K = inp[1]
var ans = 0
var list = [Int]()
while N > 2 {
	var i = 2
	while N >= i {
		i *= 2
	}
	i /= 2
	N -= i
	list.append(i)
}

if N != 0 {
	list.append(N)
}

//print(list)
//print()

while list.count > K {
	ans += list.last!
	list[list.count-1] += list.last!
	while list.count > 1, list[list.count-1] == list[list.count-2] {
		let a = list.removeLast()
//		print(list)
		list.removeLast()
//		print(list)
		list.append(a*2)
//		print(list)
	}
}
print(ans)
