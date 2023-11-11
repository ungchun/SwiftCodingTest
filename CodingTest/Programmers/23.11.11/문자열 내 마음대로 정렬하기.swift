import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
	
	let strings = strings
	return strings.sorted {
		Int(UnicodeScalar(String(Array($0)[n]))!.value) == Int(UnicodeScalar(String(Array($1)[n]))!.value) ? $0 < $1 : Int(UnicodeScalar(String(Array($0)[n]))!.value) < Int(UnicodeScalar(String(Array($1)[n]))!.value)
	}
}

print(solution(["sun", "bed", "car"], 1))
print(solution(["abce", "abcd", "cdx"], 2))
