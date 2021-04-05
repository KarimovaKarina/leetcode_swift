import UIKit
//Google Question
//Given an array = [2,5,1,2,3,5,1,2,4]:
//It should return 2

//Given an array = [2,1,1,2,3,5,1,2,4]:
//It should return 1

//Given an array = [2,3,4,5]:
//It should return undefined

func firstRecurringCharacter(_ arr: [Int]) -> Int? {
    var set = Set<Int>()
    for num in arr{
        if set.contains(num){
            return num
            
        }
        set.insert(num)
    }
    return nil
}


if let ans = firstRecurringCharacter([2,5,1,2,3,5,1,2,4]) {
    print(ans)
}
firstRecurringCharacter([2,1,1,2,3,5,1,2,4])
firstRecurringCharacter([2,3,4,5])



