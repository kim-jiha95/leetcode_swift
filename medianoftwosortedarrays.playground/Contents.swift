import UIKit

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let nums = (nums1 + nums2).sorted()
    var middleNum:Double
    let countNum = nums.count / 2
    if(nums.count % 2 == 1) {
        middleNum = Double(nums[nums.count / 2])
    } else {
        middleNum = Double(nums[(nums.count / 2)] + nums[countNum-1]) / 2
    }
    return middleNum
}
findMedianSortedArrays([1,2], [3,4])
