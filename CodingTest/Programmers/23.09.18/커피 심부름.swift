import Foundation

func solution(_ order:[String]) -> Int {
	
	var cost = 0
	
	order.forEach { order in
		switch order {
		case "cafelatte", "cafelatteice", "cafelattehot", "hotcafelatte", "icecafelatte":
			cost += 5000
			break
		default:
			cost += 4500
			break
		}
	}
	
	return cost
}
