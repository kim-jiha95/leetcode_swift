import UIKit

func reverse(_ x: Int) -> Int {
    var reverse: Int = 0
    var reversedNum = x
    while (reversedNum != 0) {
        
        reverse = reverse * 10
        
        reverse = reverse + reversedNum % 10
        
        reversedNum = reversedNum / 10
        
        if(reverse > 2147483648 || reverse < -2147483648){
            reverse = 0
        }
    }
    return reverse
}
reverse(1534236469)
