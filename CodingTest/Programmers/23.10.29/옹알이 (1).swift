import Foundation

let word = ["aya", "ye", "woo", "ma"]
var result = 0

func checkWord(babble: String) {
	print("checkWord \(babble)")
	for k in 0..<word.count {
		if babble.hasPrefix(word[k]) {
			let nextString = babble.components(separatedBy: word[k])[1]
			if nextString == "" {
				//문자열 더이상 보지않아도 된다.
				result += 1
				break
			} else {
				//잘라진 문자열이 남아있어서 이제 더 봐야한다.
				checkWord(babble: nextString)
			}
		}
	}
}

func solution(_ babbling:[String]) -> Int {
	for i in 0..<babbling.count {
		print("solution i \(i)")
		checkWord(babble: babbling[i])
		print()
	}
	return result
}

print(solution(["aya", "yee", "u", "maa", "wyeoo"]))
