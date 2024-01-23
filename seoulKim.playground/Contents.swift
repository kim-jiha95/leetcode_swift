import UIKit

func solution(_ seoul:[String]) -> String {
    if let kimIndex = seoul.firstIndex(of: "kim") {
        return "김서방은 \(kimIndex)에 있다"
    } else {
        return "김서방을 찾을 수 없다"
    }
}
solution(["kim", "park", "yu"])
