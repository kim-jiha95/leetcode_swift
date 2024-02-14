import UIKit

func solution(_ numbers:[Int]) -> Int {
    var fullNumbers:[Int] = [0,1,2,3,4,5,6,7,8,9]
    var addedNumber:Int = 0
    let newArray = fullNumbers.filter { !numbers.contains($0) }
    for i in 0..<newArray.count {
        addedNumber += newArray[i]
    }
    return addedNumber
}
solution([5,8,4,0,6,7,9])
