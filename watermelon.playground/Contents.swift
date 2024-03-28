import UIKit

func solution(_ n:Int) -> String {
    var watermelon:String = ""
    var countWatermelon:Int = n/2
    var i:Int = 0
    while i < countWatermelon {
        watermelon.append("수박")
        i += 1
    }
    if(n%2==1){
        watermelon.append("수")
    }
    return watermelon
}
solution(3)
