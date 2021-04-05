import UIKit

// https://leetcode.com/problems/two-sum/description/
// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

for (index, value) in [1,2,3].enumerated(){
    print("\(index) : \(value)")
}

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashIndics:[Int:Int] = [:]
        for (index,val) in nums.enumerated() {
            let remain = target - val
            if let index2 = hashIndics[remain] {
                return [index,index2]
            }
            hashIndics[val] = index
        }
        return []
    }
}

var myMap = [0: 2, 1: 4]
myMap[0]
