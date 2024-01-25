import UIKit

func letterCombinations(_ digits: String) -> [String] {
    // 각 숫자에 해당하는 문자들
    let digitToChars: [Character: [Character]] = [
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"]
    ]
    
    var result: [String] = []
    
    func backtrack(_ current: String, _ nextDigits: String) {
        // 종료 조건: 다음 숫자가 없으면 현재까지의 조합을 결과에 추가
        if nextDigits.isEmpty {
            result.append(current)
            return
        }
        
        // 다음 숫자의 첫 번째 문자부터 재귀적으로 조합을 만들어 나감
        if let chars = digitToChars[nextDigits.first!] {
            for char in chars {
                backtrack(current + String(char), String(nextDigits.dropFirst()))
            }
        }
    }
    
    if !digits.isEmpty {
        // 초기 호출
        backtrack("", digits)
    }
    
    return result
}
// 테스트
let combinations = letterCombinations("234")
print(combinations)

