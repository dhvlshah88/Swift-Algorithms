import Foundation


func permute(_ nums: [Int]) -> [[Int]] {
  var result = [[Int]]()
  permuteRecursive(nums, [], nums.count, Set<Int>(), &result)
  return result
}

private func permuteRecursive(_ nums: [Int], _ arr: [Int], _ index: Int, _ visited: Set<Int>, _ result: inout [[Int]]) {
  for n in nums {
    if visited.contains(n) { continue }
    
    var visited = visited
    visited.insert(n)
    
    var permutation = arr
    permutation.append(n)
    
    permuteRecursive(nums, permutation, index - 1, visited, &result)
  }
  
  if index == 0 {
    result.append(arr)
  }
}


func permute1(_ nums: [Int]) -> [[Int]] {
  var result = [[Int]]()
  if nums.isEmpty { return result }
  result.append( [] )
  for num in nums {
    let count = result.count
    for _ in 0 ..< count {
      let prefix = result.removeFirst()
      for j in 0 ... prefix.count {
        var tmp = prefix
        tmp.insert(num, at: j)
        result.append(tmp)
      }
    }
  }
  return result
}




let p = permute1 ([1,2,3])
