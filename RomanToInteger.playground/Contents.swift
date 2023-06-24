import Foundation

/// Question Link: https://leetcode.cn/problems/roman-to-integer/
///
/// Time Complexity: O(n), Space Complexity: O(1)
class RomanToInteger {
    private let symbolValues: [String: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000,
    ]

    func romanToInt(_ s: String) -> Int {
        let chars = [Character](s.map { $0 }.reversed())
        var res = 0

        for index in 0 ..< chars.count {
            guard let current = self.symbolValues[String(chars[index])] else {
                return res
            }
            if index > 0 && current < self.symbolValues[String(chars[index - 1])]! {
                res -= current
            } else {
                res += current
            }
        }

        return res
    }
}
