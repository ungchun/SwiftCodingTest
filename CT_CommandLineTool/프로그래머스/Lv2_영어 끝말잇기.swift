import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var wordDB: [String] = []
    for i in 0..<words.count{
        var word = words[i]
        // 한 글자 이상인지
        if word.count < 1{
            print(word.count)
            return [i%n + 1, i/n + 1]
        }
        // 말했던 단어인지
        if wordDB.contains(words[i]){
            print(i)
            return [i%n + 1, i/n + 1]
        }
        // 마지막 문자와 첫 문자가 같은지
        if wordDB.count != 0{
            var lastWord = wordDB[wordDB.count - 1]
            if lastWord.removeLast() != word.removeFirst(){
                return [i%n + 1, i/n + 1]
            }
        }
        wordDB.append(words[i])
        
    }
    return [0,0]
}
