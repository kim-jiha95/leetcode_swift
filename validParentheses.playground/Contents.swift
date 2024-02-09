import UIKit

func isValid(_ s: String) -> Bool {
    if s.count % 2 == 1 {
        return false
    } else {
        var stack: [Character] = []
        let openingBrackets: [Character] = ["(", "{", "["]
        let closingBrackets: [Character] = [")", "}", "]"]
        
        for char in s {
            if openingBrackets.contains(char) {
                stack.append(char)
            } else if closingBrackets.contains(char) {
                if stack.isEmpty {
                    return false
                }
                
                let lastOpenBracket = stack.removeLast()
                if let matchingOpenBracket = closingBrackets.firstIndex(of: char).map({ openingBrackets[$0] }) {
                    if matchingOpenBracket != lastOpenBracket {
                        return false
                    }
                }
            }
        }
        
        return stack.isEmpty
    }
}

isValid("{[]")
