import UIKit

func solution(_ str1:String, _ str2:String) -> Int {
    let a = str1.lowercased()
    let b = str2.lowercased()
    var result = 2
    if(a.contains(b)){
        result = 1
    }
    return result
}

solution("ab6CDE443fgh22iJKlmn1o", "6CD")
