import UIKit

func solution(_ phone_number:String) -> String {
    var chars = Array(phone_number)
    for i in 0..<phone_number.count-4 {
        chars[i] = "*"
    }
    return String(chars)
}
solution("027778888")
