import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
	return a*b*2 < Int(String(a)+String(b))! ? Int(String(a)+String(b))! : a*b*2
}
