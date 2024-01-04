import UIKit

func romanToInt(_ s: String) -> Int {
    var result = 0
    var prevValue = 0
    
    let romanDict: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    for char in s {
        if let value = romanDict[char] {
            result += value
            if value > prevValue {
                result -= 2 * prevValue // 뒤의 숫자가 앞의 숫자보다 크면 빼줌
            }
            prevValue = value
        }
    }
    
    return result
}

let result = romanToInt("MCMXCIV")
print(result)
