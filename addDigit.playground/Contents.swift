import UIKit

func solution(_ n:Int) -> Int {
    let number = String(n)
    var total = 0
    for i in 0..<number.count {
        let eachNum = number[number.index(number.startIndex, offsetBy: i)]
        total += Int(String(eachNum))!
    }
    return total
}
solution(1234)
