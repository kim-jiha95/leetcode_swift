import UIKit

func solution(_ x:Int) -> Bool {
    var totalDigit = 0
    for i in 0..<String(x).count {
        let index = String(x).index(String(x).startIndex, offsetBy: i)
        var a = String(x)[index]
        totalDigit += Int(String(a))!
    }
    if((x%totalDigit) == 0){
        return true
    } else {
        return false
    }
}
solution(13)
