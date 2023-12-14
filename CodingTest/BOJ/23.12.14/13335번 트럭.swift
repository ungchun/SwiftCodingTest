import Foundation

let nwl = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nwl[0], w = nwl[1], l = nwl[2]
var trucks = readLine()!.split(separator: " ").map{Int(String($0))!}
var waitTruck = [(Int, Int)]()
var time = 0

while !trucks.isEmpty {
	time += 1
	if !waitTruck.isEmpty {
		if waitTruck.first!.1 == time {
			waitTruck.removeFirst()
		}
	}
	
	if waitTruck.map({$0.0}).reduce(0, +) + trucks.first! > l  || waitTruck.count == w {
		continue
	}
	
	let truck = trucks.removeFirst()
	waitTruck.append((truck, time+w))
}
if !waitTruck.isEmpty {
	print(waitTruck.last!.1-time + time )
} else {
	print(time)
}
