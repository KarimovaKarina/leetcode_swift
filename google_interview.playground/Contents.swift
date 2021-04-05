import UIKit

// [1,2,3,9] sum = 8 => false

// [1,2,4,4] sum = 8 => true
let arr1 = [1,2,3,9]
let arr2 = [1,2,4,4]
// Naive
func hasPairWithSum(_ array: [Int], _ sum: Int) -> Bool{
    for item1 in array{
        for item2 in array{
            if item1 + item2 == sum {
                return true
            }
        }
    }
    return false
}

hasPairWithSum(arr1, 8)
hasPairWithSum(arr2, 8)
// O(n*m), Time compexity - nested loop
// Space complexity - O(1)

// Better
func hasPairWithSum2(_ array: [Int], _ sum: Int) -> Bool{
    var mySet = Set<Int>()
    for item in array{
        if mySet.contains(item){
            return true
        }
        mySet.insert(sum - item)
    }
    return false
}

hasPairWithSum(arr2, 8)
// Time complexity - O(n)
// Space complexity - O(n)
