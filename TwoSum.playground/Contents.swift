import Foundation

/// Question Link: https://leetcode.cn/problems/two-sum/
///
/// Time Complexity: O(n), Space Complexity: O(n)
class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]

        for (index, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, index]
            }

            dict[num] = index
        }

        fatalError("No vaild outputs.")
    }
}
