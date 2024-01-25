import Foundation

let k = Int(String(readLine()!))!
var arr = readLine()!.split(separator: " ").map{String($0)}
var answer = [String]()
var visited = Array(repeating: false, count: 10)
var resultArr = [Int]()
func dfs(_ depth: Int, _ now: Int){
		if depth == k + 1{
				answer.append(resultArr.map{String($0)}.joined())
				return
		}
		for i in 0...9{
				if !visited[i]{
						if depth > 0{
								if now <= i && arr[depth - 1] == ">"{continue}
								else if now >= i && arr[depth - 1] == "<" {continue}
						}
						visited[i] = true
						resultArr.append(i)
						dfs(depth + 1, i)
						visited[i] = false
						resultArr.removeLast()
				}
		}
}
dfs(0, 0)
print(answer.max()!)
print(answer.min()!)
