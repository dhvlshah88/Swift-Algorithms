class Solution {
  
  func lengthOfLongestSubstring(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
    
    let chars = Array(s.utf8)
    var left = 0
    var right = 1
    var result = right - left
    var i = 0
    
    while right < chars.count {
      i = left
      while i < right {
        if chars[i] == chars[right] {
          left = i + 1
          break
        }
        i += 1
      }
      result = max(result, right - left + 1)
      right += 1
    }
    
    return result
  }
  
  
  // Approach 2 with Dictionary
  func lengthOfLongestSubstring_1(_ s: String) -> Int {
    var charMap = [Character: Int]()
    var result = 0
    var left = -1
    for (right, c) in s.enumerated() {
      left = max(left, charMap[c] ?? -1)
      result = max(result, right - left)
      charMap[c] = right
    }
    return result
  }
}


_ = Solution().lengthOfLongestSubstring("abbabcdb")


