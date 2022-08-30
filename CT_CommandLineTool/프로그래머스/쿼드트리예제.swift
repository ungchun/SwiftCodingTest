import Foundation

func solution(_ S1:String, _ S2:String) -> Int {

    var blackCount = 0

    if S1 == "b" || S2 == "b" { // 둘 중에 하나라도 전체 블랙
        blackCount = 16
    } else if S1 == "w" && S2 == "w" { // else if 둘 다 하얀
        blackCount = 0
    } else {
        if S1.first == "p" && S2.first == "p" {
            blackCount = S1_AND_S2_function(S1String: S1, S2String: S2)
        } else if S1.first == "p" {
            blackCount = S1_OR_S2_function(stringCheck: S1)
        } else {
            blackCount = S1_OR_S2_function(stringCheck: S2)
        }
    }
    return blackCount * 64
}

func S1_AND_S2_function(S1String: String, S2String: String) -> Int {

    var copyS1 = S1String
    var copyS2 = S2String

    copyS1.removeFirst()
    copyS2.removeFirst()

    var result = 0

    var returnReulst = 0

    var pixelCount = 0
    var pixelBlackCheck = false

    while pixelCount != 4 {
        var S1PixelCheckArray = Array(repeating: 0, count: 4) // black = 1, white = 0
        var S2PixelCheckArray = Array(repeating: 0, count: 4) // black = 1, white = 0

        let S1FirstChar = copyS1.removeFirst()
        let S2FirstChar = copyS2.removeFirst()

        if S1FirstChar == "w" && S2FirstChar == "w" {} else {
            if S1FirstChar == "b" {
                pixelBlackCheck = true
            } else if S1FirstChar == "p" {
                for i in 0..<4 {
                    if copyS1.removeFirst() == "b" {
                        S1PixelCheckArray[i] = 1
                    } else {
                        S1PixelCheckArray[i] = 0
                    }
                }
            } else {}

            if S2FirstChar == "b" {
                pixelBlackCheck = true
            } else if S2FirstChar == "p" {
                for i in 0..<4 {
                    if copyS2.removeFirst() == "b" {
                        S2PixelCheckArray[i] = 1
                    } else {
                        S2PixelCheckArray[i] = 0
                    }
                }
            } else {}
        }

        if pixelBlackCheck {
            result += 4
        } else {
            for i in 0..<4 {
                if S1PixelCheckArray[i] == 1 || S2PixelCheckArray[i] == 1 {
                    result += 1
                }
            }
        }

        pixelCount += 1
        returnReulst += result
        result = 0
        pixelBlackCheck = false
    }
    return returnReulst
}

func S1_OR_S2_function(stringCheck: String) -> Int {
    var copyString = stringCheck
    copyString.removeFirst()

    var pixelCount = 0
    var result = 0
    var returnResult = 0

    while pixelCount != 4 {
        let copyStringFirstChar = copyString.removeFirst()
        if copyStringFirstChar == "b" {
            result += 4
        } else if copyStringFirstChar == "w" {
        } else {
            for _ in 0..<4 {
                if copyString.removeFirst() == "b" {
                    result += 1
                } else {}
            }
        }
        pixelCount += 1
        returnResult += result
        result = 0
    }

    return returnResult
}

print("solution \(solution("ppwwwbpbbwwbw", "pwbwpwwbw"))")
