import UIKit

func myAtoi(_ s: String) -> Int {
    let isMinus = s.contains("-")
    let trimString = s.trimmingCharacters(in: [" "])
    var filteredStr = trimString.prefix(while: { $0.isNumber })
    let unicodeScalar = trimString.unicodeScalars.first!
    if(isMinus) {
        filteredStr = "-" + filteredStr
    } else if(CharacterSet.decimalDigits.contains(unicodeScalar)==false) {
        filteredStr = "0"
    }
    if(abs(Int(filteredStr)!) > 2147483648) {
        if(isMinus) {
            filteredStr = "-2147483648"
        } else {
            filteredStr = "2147483648"
        }
    }
    return Int(filteredStr)!
}
myAtoi("test 314")
