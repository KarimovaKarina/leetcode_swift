func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result : [Int] = []
    for i in 0..<nums.count {
        for j in 0..<nums.count {
            if i != j {
                let sumOf = nums[i] + nums[j]
                if sumOf == target{
                        result = [i,j]
                }
            }
        }
    }
    return result
}

twoSum([2,7,11,15], 9)
