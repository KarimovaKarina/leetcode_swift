import UIKit

func reverseString(str: String) -> String {
    let stringArray = Array(str)
    var reverseString: [Character] = []
    for i in stride(from: stringArray.count-1, through: 0, by: -1){
        reverseString.append(stringArray[i])
    }
    return String(reverseString)
}

print(reverseString(str: "Hi Karina!"))

func reverseString2(_ str: String) -> String{
    var reverseString = ""
    for char in str{
        reverseString = char.description + reverseString
    }
    return reverseString
}

reverseString2("Hi Karina!")

func reverseString3(_ str: String) -> String{
    return String(str.reversed())
}

print(reverseString3(""))
