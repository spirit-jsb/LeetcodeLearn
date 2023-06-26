import Foundation

/// Question Link: https://leetcode.cn/problems/longest-common-prefix/
///
/// Time Complexity: O(mn), Space Complexity: O(1)
class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let sorted = strs.sorted()
        
        guard !strs.isEmpty, let min = sorted.first, let max = sorted.last else {
            return ""
        }
        
        for (i, char) in min.enumerated() {
            if char != [Character](max)[i] {
                return String(max.prefix(i))
            }
        }
        
        return min
    }
}
