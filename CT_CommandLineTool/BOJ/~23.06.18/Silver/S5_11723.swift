import Foundation

let file = FileIO()
var m = file.readInt()

var bit = 0
var result = ""
while m != 0{
    switch file.readStirngSum(){
    case 297:
        bit |= (1 << file.readInt())
    case 654:
        bit &= ~(1 << file.readInt())
    case 510:
        
        if (bit & (1 << file.readInt()) != 0){
            result.append("1\n")
        }else{
            result.append("0\n")
        }
    case 642:
        bit ^= (1 << file.readInt())
    case 313:
        bit |= (~0)
    case 559:
        bit &= 0
    default:
        break
    }
    m -= 1
}
print(result)
