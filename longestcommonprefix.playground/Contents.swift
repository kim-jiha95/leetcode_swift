import UIKit

func longestCommonPrefix(_ strs: [String]) -> String {
    guard let firstString = strs.first, !firstString.isEmpty else { return "" }

    var commonPrefix = firstString

    for i in 1..<strs.count {
        let currentString = strs[i]

        if let range = commonPrefix.range(of: currentString) {
            commonPrefix = String(commonPrefix[range])
        } else {
            while !currentString.hasPrefix(commonPrefix) {
                commonPrefix.removeLast()
                if commonPrefix.isEmpty {
                    return ""
                }
            }
        }
    }

    return commonPrefix
}

let result = longestCommonPrefix(["reflower","flow","flight"])

//no.2
//func longestCommonPrefix(_ strs: [String]) -> String {
//
//       if strs.isEmpty { return "" }
//       var common = strs[0]
//
//       for ch in strs {
//           while !ch.hasPrefix(common) {
//               common = String(common.dropLast())
//           }
//       }
//       return common
//   }

