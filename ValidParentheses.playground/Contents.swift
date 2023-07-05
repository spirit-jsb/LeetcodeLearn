import Foundation

/// Question Link: https://leetcode.cn/problems/valid-parentheses/
///
/// Time Complexity: O(n), Space Complexity: O(n)
class ValidParentheses {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for char in s {
            if char == "(" {
                stack.append(")")
            } else if char == "{" {
                stack.append("}")
            } else if char == "[" {
                stack.append("]")
            } else {
                if char == stack.last {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}
