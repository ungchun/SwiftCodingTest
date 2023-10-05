import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
	
	switch ineq {
	case ">":
		if eq == "=" {
			return n >= m ? 1 : 0
		} else {
			return n > m ? 1 : 0
		}
	case "<":
		if eq == "=" {
			return n <= m ? 1 : 0
		} else {
			return n < m ? 1 : 0
		}
	default:
		break
	}
	
	return 0
}
