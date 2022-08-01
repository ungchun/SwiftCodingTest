import Foundation

var stringVal = "...!@BaT#*..y.abcdefghijklm"
var testDisassemble: [Character] = []

stringVal = stringVal.lowercased()

var temp = ""

for char in stringVal {
    if char.isLetter || char.isNumber || char == "." || char == "_" || char == "-" {
        temp.append(char)
    }
}

stringVal = temp

while stringVal.contains("..") {
    stringVal = stringVal.replacingOccurrences(of: "..", with: ".")
}

while stringVal.hasPrefix(".") {
    stringVal.removeFirst()
}

while stringVal.hasSuffix(".") {
    stringVal.removeLast()
}

if stringVal.isEmpty {
    stringVal = "a"
}

if stringVal.count >= 16 {
    stringVal = String(describing: stringVal.prefix(15))
    
    if stringVal.hasSuffix(".") {
        stringVal.removeLast()
    }
}

while stringVal.count <= 2 {
    stringVal.append(stringVal.last!)
}

print("resukt \(stringVal)")
