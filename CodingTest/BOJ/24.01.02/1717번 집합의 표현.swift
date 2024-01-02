import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0], m = nm[1]
var parent = [Int]()

for i in 0...n {
		parent.append(i)
}

func findParent(_ a: Int) -> Int {
	if a == parent[a] {
		return a
	} else {
		parent[a] = findParent(parent[a])
		return parent[a]
	}
}

func makeUnion(_ a: Int, _ b: Int) {
		let pa = findParent(a);
		let pb = findParent(b);

		if pa > pb {
				parent[pa] = pb
		} else if pa < pb {
				parent[pb] = pa
		}
}

for _ in 0..<m {
		let command = readLine()!.split(separator: " ").map { Int(String($0))! }

		if command[0] == 0 {
				makeUnion(command[1], command[2])
		} else {
				if findParent(command[1]) == findParent(command[2]) {
						print("YES")
				} else {
						print("NO")
				}
		}
}
