import UIKit

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    var result = nums[0] + nums[1] + nums[2]
    let sortedNums = nums.sorted()
    
    for i in 0..<sortedNums.count - 2 {
        var left = i + 1
        var right = sortedNums.count - 1
        
        while left < right {
            let currentSum = sortedNums[i] + sortedNums[left] + sortedNums[right]
            if abs(currentSum - target) < abs(result - target) {
                result = currentSum
            }
            if currentSum == target {
                return result
            } else if currentSum < target {
                left += 1
            } else {
                right -= 1
            }
        }
    }
    return result
}

threeSumClosest([4,5, -2, 2], 1)
