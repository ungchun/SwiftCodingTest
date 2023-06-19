import Foundation

func solution(_ n: Int, _ words:[String]) -> [Int] {
    var firstFailNum = 0 // 가장 먼저 탈락한 사람 번호
    var failCount = 1 // 몇 번째 차례
    var checkString: [String] = [] // 중복확인
    var nCount = 0 // 싸이클 체크
    var failCheck = false // 탈락자 체크

    for i in 0..<words.count {
        
        // nCount가 3이면 한 싸이클이 돌았다고 판단
        if nCount == n {
            nCount = 0
            failCount += 1
        }
        
        nCount += 1
        
        // 첫 번째 단어 확인 제외, 끝말잇기 규칙 확인
        if !checkString.isEmpty {
            if checkString.last!.last != words[i].first {
                firstFailNum = (i % n) + 1 // -> i == 8 이면 마지막 사람 -> 나머지 + 1
                failCheck = true
                break
            }
        }

        // 중복이거나 || 글자 수 한 글자 인정 x
        if checkString.contains(words[i]) || words[i].count <= 1 {
            firstFailNum = (i % n) + 1
            failCheck = true
            break
        }

        checkString.append(words[i])
    }
    
    // 탈락자 발생안했으면 firstFailNum == 0, failCheck 삼항연상자 처리
    return [firstFailNum, failCheck ? failCount : 0]
}


print(solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))
print(solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]))
print(solution(5, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"]))


