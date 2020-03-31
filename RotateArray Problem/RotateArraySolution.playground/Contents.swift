import Foundation


class Solution {
  
  // Approach 1
  func rotateRight(_ nums: inout [Int], _ k: Int) {
    let n = nums.count
    let k = k % n
    if k == 0 { return }
    
    reverse(&nums, 0, j: n-1)
    reverse(&nums, 0, j: k-1)
    reverse(&nums, k, j: n-1)
  }
  
  func reverse(_ nums: inout [Int], _ i: Int, j: Int) {
    var i = i
    var j = j
    while j > i {
      nums.swapAt(i, j)
      i += 1
      j -= 1
    }
  }
  
  
  // Approach 2
  func rotateRight_1(_ nums: inout [Int], _ k: Int) {
    let k1 = k % nums.count
    let initialCount = nums.count - k1
    let arrayWithInitialElements = Array(nums[0 ..< initialCount])
    let arrayWithLastElements = Array(nums[initialCount..<nums.count])
    
    nums = arrayWithLastElements + arrayWithInitialElements
  }
  
}

var n = [1,2,3,4,5]
let s = Solution()
s.rotateRight(&n, 4)
n

n = [1,2,3,4,5]
s.rotateRight_1(&n, 4)
n
