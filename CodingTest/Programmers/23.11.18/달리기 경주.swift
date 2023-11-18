import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
	var players = players
	var dict: [String: Int] = [:]
	
	for i in 0..<players.count {
		dict[players[i]] = i
	}

	callings.forEach { string in
		let temp = dict[string]
		dict[string] = temp! - 1
		dict[players[temp!-1]] = temp
		
		let tempString = players[temp!-1]
		players[temp! - 1] = string
		players[temp!] = tempString
	}
	
	return players
}
