import UIKit

func solution(_ n:Int) -> [Int] {
    var divisors:[Int] = []
    for i in 1..<n+1 {
        if(n%i==0) {
            divisors.append(i)
        }
    }
    return divisors
}
solution(24)
