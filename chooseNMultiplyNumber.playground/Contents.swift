import UIKit

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    var multipleNumslist: [Int] = []
    for i in 0..<numlist.count {
        if(numlist[i]%n==0){
            multipleNumslist.append(numlist[i])
        }
    }
    return multipleNumslist
}
solution(3, [4, 5, 6, 7, 8, 9, 10, 11, 12])
