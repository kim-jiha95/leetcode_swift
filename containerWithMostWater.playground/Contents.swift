import UIKit

func maxArea(_ height: [Int]) -> Int {
    var maxArea = Int.min
            var low = 0
            var hight = height.count - 1

            while low < hight {
                let area = min(height[low], height[hight]) * (hight - low)

                maxArea = max(area, maxArea)

                if height[low] < height[hight] {
                    low += 1
                } else {
                    hight -= 1
                }
            }

            return maxArea
   }
maxArea([1,8,6,2,5,4,8,3,7])
