import Foundation

// 1번
func solution(_ flowers:[[Int]]) -> Int {
    var dayArray:[Int] = []
    
    flowers.forEach { flower in
        for day in flower[0]..<flower[1] {
            if dayArray.contains(day) {
                continue
            } else {
                dayArray.append(day)
            }
        }
    }
    return dayArray.count
}
print(solution([[2,5], [3,7], [10,11]]))

// 2번
func solution(_ id_list:[String], _ k:Int) -> Int {
    
    var result = 0
    var dict: [String: Int] = [:]
    
    id_list.forEach { ids in
        var dupliCheck: [String] = []
        ids.split(separator: " ").forEach { id in
            if dict[String(id)] == nil {
                dict[String(id)] = 1
                result += 1
                dupliCheck.append(String(id))
            }
            else if !dupliCheck.contains(String(id)) && dict[String(id)]! < k {
                dict[String(id)]! += 1
                result += 1
                dupliCheck.append(String(id))
            }
        }
        dupliCheck = []
    }
    
    return result
}
print(solution(["A B C D", "A D", "A B D", "B D"], 2))

// 3번
func solution(_ s:String, _ times:[String]) -> [Int] {
    
    var YYYY = Int(s.split(separator: ":")[0])!
    var MM = Int(s.split(separator: ":")[1])!
    var DD = Int(s.split(separator: ":")[2])!
    var HH = Int(s.split(separator: ":")[3])!
    var mm = Int(s.split(separator: ":")[4])!
    var ss = Int(s.split(separator: ":")[5])!
    
    var everyOneDayCheck = true
    var resultCount = 0
    
    times.forEach { time in
        let timeDict: [String:Int] = splitString(value: time)
        let beforeDay = DD
        var tempDDValueToSub = 0
        
        if ss + timeDict["SS"]! >= 60 {
            ss = (ss + timeDict["SS"]!) - 60
            mm += 1
        } else {
            ss = ss + timeDict["SS"]!
        }
        
        if mm + timeDict["mm"]! >= 60 {
            mm = (mm + timeDict["mm"]!) - 60
            HH += 1
        } else {
            mm = mm + timeDict["mm"]!
        }
        
        if HH + timeDict["HH"]! >= 24 {
            HH = (HH + timeDict["HH"]!) - 24
            DD += 1
        } else {
            HH = HH + timeDict["HH"]!
        }
        
        tempDDValueToSub = DD + timeDict["DD"]!
        if DD + timeDict["DD"]! > 30 {
            DD = (DD + timeDict["DD"]!) - 30
            MM += 1
        } else {
            DD = DD + timeDict["DD"]!
        }
        
        if MM > 12 {
            YYYY += 1
            MM -= 12
        }
        
        if tempDDValueToSub != beforeDay && tempDDValueToSub - beforeDay != 1 {
            everyOneDayCheck = false
        }
        
        resultCount += (tempDDValueToSub - beforeDay)
    }
    
    return [everyOneDayCheck ? 1 : 0, resultCount+1]
}

func splitString(value: String) -> Dictionary<String, Int> {
    
    let dict: [String:Int] = [
        "DD":Int(value.split(separator: ":")[0])!,
        "HH":Int(value.split(separator: ":")[1])!,
        "mm":Int(value.split(separator: ":")[2])!,
        "SS":Int(value.split(separator: ":")[3])!
    ]
    
    return dict
}

//print(solution("2021:04:12:16:08:35", ["01:06:30:00", "01:04:12:00"]))
print(solution("2021:04:12:16:08:35", ["01:06:30:00", "00:01:12:00"]))
