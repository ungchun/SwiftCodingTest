import Foundation

func solution(_ s:String) -> String {
	
	if s.count % 2 == 0 {
		let temp = s.map {String($0)}
		return temp[s.count/2-1...s.count/2].reduce("", +)
	} else {
		let temp = s.map {String($0)}
		return temp[s.count/2]
	}
}
