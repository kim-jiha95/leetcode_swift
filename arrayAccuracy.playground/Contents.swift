import UIKit

func solution(_ s1:[String], _ s2:[String]) -> Int {
    let commonArr = s1.filter{s2.contains($0)}
    return commonArr.count
}
solution(["a", "b", "c"], ["com", "b", "d", "p", "c"] )
