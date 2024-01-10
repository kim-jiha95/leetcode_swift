import UIKit

func lengthOfLongestSubstring(_ s: String) -> Int {
    var len = 0, chars = [Character]()
            for c in s {
                if let idx = chars.firstIndex(of: c) {
                    chars.removeSubrange(0...idx)
                }
                print(c, "c")
                chars.append(c)
                print(chars, "chars")
                len = max(len, chars.count)
            }
            return len
    }
lengthOfLongestSubstring("pwwkew")
