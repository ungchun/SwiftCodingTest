import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
	
	let value = Int(today.split(separator: ".").reduce("", +))!
	
	var dict:[String:Int] = [:]
	
	terms.forEach { string in
		let split = string.split(separator: " ")
		dict[String(split[0])] = Int(split[1])
	}
	
	var result: [Int] = []
	
	for i in 0..<privacies.count {
		let string = privacies[i]
		let dotSplit = string.split(separator: ".")
		var year = String(dotSplit[0])
		var month = String(dotSplit[1])
		var day = String((dotSplit.last?.split(separator: " ").first)!)
		
		let target = String((dotSplit.last?.split(separator: " ").last)!)
		
		var chk = Int(month)! + dict[target]!

		while chk > 12 {
			year = String(Int(year)! + 1)
			chk -= 12
		}

		if chk < 10 {
			month = "0"+String(chk)
		} else {
			month = String(chk)
		}
		
		
		day = String(Int(day)! - 1)
		
		if Int(day)! < 10 {
			day = "0"+String(day)
		}
		
		if Int(day)! == 0 {
			day = "28"
			if Int(month)! == 1 {
				month = "12"
				year = String(Int(year)!-1)
			} else {
				month = String(Int(month)!-1)
				if Int(month)! < 10 {
					month = "0"+String(month)
				}
			}
		}

		if value > Int(String(year+month+day))! {
			result.append(i+1)
		}
	}
		
	return result
}
