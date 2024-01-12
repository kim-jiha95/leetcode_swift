import UIKit

func solution(_ num:Int, _ k:Int) -> Int {
   var targetDigit = 0
    for (index, char) in String(num).enumerated() {
        if let digit = Int(String(char)), digit == k {
            targetDigit = index + 1
            break
        } else {
            targetDigit = -1
        }
    }
    return targetDigit
}
solution(123456, 7)
