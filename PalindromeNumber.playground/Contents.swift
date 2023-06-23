import Foundation

/// Question Link: https://leetcode.cn/problems/palindrome-number/
///
/// Time Complexity: O(logn), Space Complexity: O(1)
class PalindromeNumber {
    func isPalindrome(_ x: Int) -> Bool {
        // 特殊情况
        // 当 x < 0 时，x 不是回文数
        // 当 x >= 0 && x % 10 == 0 时，x 不是回文数
        guard x >= 0 && (x % 10 != 0 || x == 0) else {
            return false
        }

        var x = x
        var reverted = 0

        while x > reverted {
            reverted = reverted * 10 + x % 10
            x /= 10
        }

        // 当数字长度为奇数时，可以通过 reverted / 10 去除处于中位的数字
        return x == reverted || x == reverted / 10
    }
}
