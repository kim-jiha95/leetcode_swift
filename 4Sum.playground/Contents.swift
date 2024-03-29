class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        let len = nums.count
        guard len >= 4 else { return [] }
        
        var result = [[Int]]()
        let sort = nums.sorted()
        
        for a in 0..<(len - 1) where a == 0 || sort[a] != sort[a-1] {
            for b in (a + 1)..<len where b == a + 1 || sort[b] != sort[b-1] {
                var c = b + 1, d = len - 1
                while c < d {
                    let val = (a: sort[a], b: sort[b], c: sort[c], d: sort[d])
                    let sum = (val.a + val.b + val.c + val.d)
                    if sum == target { result.append([val.a,val.b,val.c,val.d]) }
                    if sum < target {
                        while sort[c] == val.c, c < d { c += 1 }
                    } else {
                        while sort[d] == val.d, d > b { d -= 1 }
                    }
                }
            }
        }
        return result
    }
}
