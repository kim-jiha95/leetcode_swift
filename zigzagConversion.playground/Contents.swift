import UIKit

func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 || numRows >= s.count {
            return s
        }
        
        var rows = [String](repeating: "", count: min(numRows, s.count))
        var currentRow = 0
        var goingDown = false
        
        for char in s {
            rows[currentRow].append(char)
            if currentRow == 0 || currentRow == numRows - 1 {
                goingDown = !goingDown
            }
            currentRow += goingDown ? 1 : -1
        }
        
        var result = ""
        for row in rows {
            result += row
        }
        
        return result
    }

convert("PAYPALISHIRING", 3) //PAHNAPLSIIGYIR
