var countryNumber = Int(readLine()!)!
var result = 0
var lengthCount = 0
var oilCount = 0
var minValue = 0

var countryOils = readLine()!.split(separator: " ").map {Int($0)!}
var countryLenghts = readLine()!.split(separator: " ").map {Int($0)!}

result += (countryOils[oilCount] * countryLenghts[lengthCount])
minValue = countryLenghts[lengthCount]
lengthCount += 1
oilCount += 1

while true {
    if oilCount >= countryOils.count {
        break
    }
    if countryLenghts[lengthCount] < minValue {
        minValue = countryLenghts[lengthCount]
        result += (minValue * countryOils[oilCount])
    } else {
        result += (minValue * countryOils[oilCount])
    }
    lengthCount += 1
    oilCount += 1
}

print("\(result)")
