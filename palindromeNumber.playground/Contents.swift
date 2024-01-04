import UIKit

func isPalindrome(_ x: Int) -> Bool {
    let intAsString = String(x)
        let length = intAsString.count
        if(intAsString.prefix(length/2) == String(intAsString.suffix(length/2).reversed())) {
            return true
        } else {
            return false
        }
}
