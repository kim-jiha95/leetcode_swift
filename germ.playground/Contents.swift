import UIKit
import Foundation
func solution(_ n:Int, _ t:Int) -> Int {
    let base = NSDecimalNumber(decimal: Decimal(n))
    let base2 = NSDecimalNumber(decimal: Decimal(2))
    let exponent = NSDecimalNumber(decimal: Decimal(t))
                                    
    let result = base2.raising(toPower: exponent.intValue)

    return n * result.intValue
}
solution(7, 15)
