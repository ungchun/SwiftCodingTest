let num = Int(readLine()!)!
var array = [String]()
var dic: [String: Int] = [:]

for _ in 0..<num {
    let string = readLine()
    array.append(string!)
    dic[string!] = string?.count
}

let removedDuplicate: Set = Set(array)
var setArray = Array(removedDuplicate)

setArray.sort{dic[$0]! < dic[$1]! || (dic[$0]! == dic[$1]! && $0 < $1) }

for i in 0..<setArray.count {
    print("\(setArray[i])")
}
