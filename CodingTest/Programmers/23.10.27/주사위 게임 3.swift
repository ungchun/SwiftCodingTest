import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
	
	var Dict: [Int : Int] = [:]
	
	for num in [a, b, c, d] {
		Dict[num, default: 0] += 1
	}

	let keyValueArray = Array(Dict).sorted {$0.value > $1.value}
	
	switch keyValueArray.count {
		case 1: return keyValueArray[0].key * 1111
		case 2:
			let first: Int = keyValueArray[0].key
			let second: Int = keyValueArray[1].key
			if keyValueArray[0].value == keyValueArray[1].value { return (first + second) * abs(first - second)}
			else { return Int(pow(Double(10 * first + second), 2)) }
		case 3:
			return keyValueArray[1].key * keyValueArray[2].key
		default: return min(a, b, c, d)
	}
}
