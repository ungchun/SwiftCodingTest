import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)]
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() }
        if now == 45{ isPositive.toggle(); now = read() }
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() }
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}

func solution() {
    
    let file = FileIO()
    
    for _ in 0..<file.readInt() {
        let cnt = file.readInt()
        var scores: [(Int, Int)] = []
        var standard: Int = 0
        var result: Int = 1

        for _ in 0..<cnt {
            scores.append((file.readInt(), file.readInt()))
        }
        scores.sort { $0.0 < $1.0 }
        
        standard = scores[0].1
        
        for i in 0..<scores.count {
            if standard > scores[i].1 {
                standard = scores[i].1
                result += 1
            }
        }
        print(result)
    }
}

solution()
