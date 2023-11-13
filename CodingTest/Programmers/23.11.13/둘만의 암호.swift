import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
	let aAscii = Int(UnicodeScalar("a").value)
	let zAscii = Int(UnicodeScalar("z").value)
	
	let skipAscii = skip.map { Int(UnicodeScalar(String($0))!.value)}
	
	var answer = ""
	
	for v in s {
		var ascii = Int(UnicodeScalar(String(v))!.value)
		var indexCnt = 0
		
		while indexCnt < index {
			ascii += 1
			
			if ascii > zAscii {
				ascii = aAscii
			}
			
			if skipAscii.contains(ascii) {
				continue
			} else {
				indexCnt += 1
			}
		}
		answer.append(String(UnicodeScalar(ascii)!))
	}
	return answer
}
