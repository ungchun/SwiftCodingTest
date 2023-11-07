func solution(_ n:Int64) -> Int64 {
	let t = Array(String(n)).map {Int(String($0))!}.sorted(by: >).map {String($0)}
	
	return Int64(t.joined())!
}
