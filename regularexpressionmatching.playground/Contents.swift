import Foundation

class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        
        var visit = [[Bool]]()
        let sLength = s.count, pCount = p.count
        
        for _ in 0...sLength + 1 {
            visit.append([Bool](repeating: false, count: pCount + 1))
        }
        
        visit[sLength][pCount] = true
        
        for i in stride(from: sLength, through: 0, by: -1) {
            for j in stride(from: pCount - 1, through: 0, by: -1) {
                
                let arrS = Array(s), arrP = Array(p)
                
                let first = i < sLength && (arrS[i] == arrP[j] || arrP[j] == ".")
                
                if j + 1 < pCount && arrP[j + 1] == "*" {
                    visit[i][j] = visit[i][j + 2] || first && visit[i + 1][j]
                } else {
                    visit[i][j] = first && visit[i + 1][j + 1]
                }
            }
        }
        return visit[0][0]
    }
}

