import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reportBoard: [String: Set<String>] = [:]
    var result:[Int] = Array(repeating: 0, count: id_list.count)
    
    var duplicateCheck:[String:Int] = [:]
    for (i,id) in id_list.enumerated() {
        duplicateCheck[id] = i
    }
    
    report.forEach { value in
        let reporting = value.split(separator: " ").map{String($0)}[0] // 신고 한 사람
        let reported = value.split(separator: " ").map{String($0)}[1] // 신고 당한 사람
        if reportBoard[reported] == nil {
            reportBoard[reported] = [reporting]
        } else {
            reportBoard[reported]!.insert(reporting)
        }
    }
    
    for report in reportBoard {
        if report.value.count >= k {
            for id in report.value {
                result[duplicateCheck[id]!] += 1
            }
        }
    }
    return result
}

//print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))
print(solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3))
