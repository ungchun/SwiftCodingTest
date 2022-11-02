import Foundation

//final class FileIO {
//    private let buffer:[UInt8]
//    private var index: Int = 0
//    
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
//    }
//    
//    @inline(__always) private func read() -> UInt8 {
//        defer { index += 1 }
//        
//        return buffer[index]
//    }
//    
//    @inline(__always) func readInt() -> Int {
//        var sum = 0
//        var now = read()
//        var isPositive = true
//        
//        while now == 10
//                || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48)
//            now = read()
//        }
//        
//        return sum * (isPositive ? 1:-1)
//    }
//    
//    @inline(__always) func readString() -> String {
//        var now = read()
//        
//        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        let beginIndex = index-1
//        
//        while now != 10,
//              now != 32,
//              now != 0 { now = read() }
//        
//        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
//    }
//    
//    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
//        var now = read()
//        
//        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        let beginIndex = index-1
//        
//        while now != 10,
//              now != 32,
//              now != 0 { now = read() }
//        
//        return Array(buffer[beginIndex..<(index-1)])
//    }
//}


class FileIO {
    @inline(__always) private var buffer: [UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()) + [0], byteIdx = 0
    
    @inline(__always) private func readByte() -> UInt8 {
        defer { byteIdx += 1 }
        return buffer.withUnsafeBufferPointer { $0[byteIdx] }
    }
    
    @inline(__always) func readInt() -> Int {
        var number = 0, byte = readByte(), isNegative = false
        while byte == 10 || byte == 32 { byte = readByte() }
        if byte == 45 { byte = readByte(); isNegative = true }
        while 48...57 ~= byte { number = number * 10 + Int(byte - 48); byte = readByte() }
        return number * (isNegative ? -1 : 1)
    }
    
    @inline(__always) func readStirngSum() -> Int {
        var byte = readByte()
        while byte == 10 || byte == 32 { byte = readByte() }
        var sum = Int(byte)
        while byte != 10 && byte != 32 && byte != 0 { byte = readByte(); sum += Int(byte) }
        return sum - Int(byte)
    }
    
    @inline(__always) private func write(_ output: String) {
        FileHandle.standardOutput.write(output.data(using: .utf8)!)
    }
}

