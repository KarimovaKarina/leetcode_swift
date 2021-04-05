import UIKit

//Kadane's algorithm
func maxSubArray(_ nums: [Int]) -> Int {
    var localMax = nums[0]
    var globalMax = nums[0]
    for num in nums[1...]{
        localMax = max(num, localMax + num)
        if localMax>globalMax {
            globalMax = localMax
        }
    }
    return globalMax
}

maxSubArray([-2,1,-3,4,-1,2,1,-5,4])

//Brute Force
func maxSubArray2(_ nums: [Int]) -> Int {
    var globalMax = nums[0]
    var localMax = nums[0]
    var sum: Int
    for i in 0...nums.count-1{
        sum = 0
        for j in i...nums.count-1{
            sum = sum + nums[j]
            localMax = max(localMax, sum)
            if localMax>globalMax {
                globalMax = localMax
            }
        }
    }
    return globalMax
}
maxSubArray2([-2,1,-3,4,-1,2,1,-5,4])
