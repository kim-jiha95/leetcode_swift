import UIKit

func solution(_ arr:[Int]) -> [Int] {
    guard let minValue = arr.min() else {
            return [-1]
        }
        
        return arr.filter { $0 > minValue }
}
solution([4,3,2,1])
