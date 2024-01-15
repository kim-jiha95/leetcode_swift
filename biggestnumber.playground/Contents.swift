import UIKit

func solution(_ array:[Int]) -> [Int] {
    var biggestNum:Int = 0
    var biggestIndex:Int = 0
    for i in 0..<array.count {
        if(array[i] > biggestNum ) {
            biggestNum = array[i]
            biggestIndex = i
        }
    }
    return [biggestNum, biggestIndex]
}
solution([9, 10, 11, 8])
