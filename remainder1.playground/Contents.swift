import UIKit

func solution(_ n:Int) -> Int {
    var x:Int = 0
    var i = 1
    while i < n {
        if n % i == 1 {
            x = i
            break
        }
        i += 1
    }
    return x
}
solution(10)
