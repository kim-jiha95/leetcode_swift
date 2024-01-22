import UIKit

func solution(_ num:Int) -> String {
    var isOdd = "Odd"
    if num%2==0{
        isOdd = "Even"
    }
    return isOdd
}
solution(3)
