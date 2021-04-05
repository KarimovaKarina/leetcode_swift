import UIKit

//let nemo = ["nemo"]
//let everyone = ["dory", "bruce", "marlin", "nemo", "gill", "bloat", "nigel", "squirt", "darla", "hank"]
//let large = Array.init(repeating: "nemo", count: 200)
//
//func findNemo(array: [String]){
//    for i in 0..<array.count{
//        if array[i] == "nemo"{
//            print("Found Nemo!!!")
//        }
//    }
//}
//
//findNemo(array: large) // O(n) --> Linear


// log all pairs of array
//let boxes = [1,2,3,4,5]
//func pairwise(array: [Int]) -> [(Int, Int)]{
//    var answer: [(Int, Int)] = []
//    for i in array{
//        for j in array{
//            answer.append((i,j))
//        }
//    }
//    return answer
//}
//
//print(pairwise(array: boxes))

//func boo(n: [Int]){
//    for _ in 0..<n.count{
//        print("boo")
//    }
//}
//
//boo(n: [1,2,3,4,5]) // O(1)
//
//func arrayOfHiNTimes(n: Int) -> [String]{
//    var hiArray = [String]()
//    for _ in 0..<n{
//        hiArray.append("hi")
//    }
//    return hiArray
//}
//
//arrayOfHiNTimes(n: 5) // O(n)
//
//let const = ["hi", "my", "teddy"]
//const[0]
//const[const.count - 1]
//
//const.count //O(1)
let arr1 = ["a", "b", "c", "d"]
let arr2 = ["x", "y", "a"]

func containsCommonItems(_ array1: [String], _ array2: [String]) -> Bool {
    for itemInArray1 in array1{
        for itemInArray2 in array2{
            if itemInArray1 == itemInArray2 {
                return true
            }
        }
    }
    return false
}

containsCommonItems(arr1, arr2)

func containsCommonItems2(_ array1: [String], _ array2: [String]) -> Bool{
    // loop through first array and create object where properties  == items in the array
    var map = [String:Bool]()
    array1.forEach { item in
        map[item] = true
    }
    // loop through second array and check if item in second array exists on created object.
    for item in array2 {
        if map[item] ?? false{
            return true
        }
    }
    print(map)
    return false
}

containsCommonItems2(arr1, arr2)

func containsCommonItem3(_ array1: [Int], _ array2: [Int]) -> Bool{
    return array1.map { array2.contains($0) }.contains(true)
}
