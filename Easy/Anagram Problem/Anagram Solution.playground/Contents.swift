class Solution {
  
  // Approach 1
  func isAnagram_Ugly(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
      return false
    }
    
    var charOccurencesMap : [Character: Int] = [:]
    
    for char in s {
      let count = charOccurencesMap[char, default: 0]
      charOccurencesMap[char] = count + 1
    }
    
    for char in t {
      if charOccurencesMap[char] == nil {
        return false
      }
      
      let decrement = charOccurencesMap[char] ?? 1
      if decrement == 1 {
        charOccurencesMap.removeValue(forKey: char)
      } else {
        charOccurencesMap[char] = decrement - 1
      }
    }
    
    return charOccurencesMap.isEmpty
  }
  
  // Approach 2
  func isAnagram_1(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
      return false
    }
    
    var sMap : [Character: Int] = [:]
    
    for char in s {
      sMap[char, default: 0] += 1
    }
    
    for char in t {
      sMap[char, default: 0] -= 1
    }
    
    for (_ , v) in sMap {
      if v != 0 { return false }
    }
    
    return true
  }
  
  // Approach 3
  func isAnagram_2(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
      return false
    }
    
    var n = [Int](repeating: 0, count: 26)
    let start = "a".unicodeScalars.first!.value
    
    for us in s.unicodeScalars {
      n[Int(us.value - start)] += 1
    }
    
    for us in t.unicodeScalars {
      let i = Int(us.value - start)
      n[i] -= 1
      if n[i] < 0 { return false }
    }
    
    return true
  }
}


var s = Solution()
s.isAnagram_1("cat", "act")

s.isAnagram_2("anagram", "nagaram")
