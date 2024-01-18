import Foundation

func solution(_ my_string:String) -> Int {
    return my_string.replacingOccurrences(of: " - ", with: " + -").split(separator: " + ").reduce(0) { $0 + Int($1)!}
}
solution("5 - 7")
