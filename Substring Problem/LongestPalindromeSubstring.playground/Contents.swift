//: Playground - noun: a place where people can play

var str = "abaxabaxabb"
let pp = PalidromeProblem()

//O(n2) solution
//func longestPalindromeSubstring(str:String) -> Int {
//    let charArray = [Character](str.characters)
//    let len = str.characters.count
//    var longest_palindrome = 1;
//    var x, y, palindrome : Int;
//    
//    for i in 0 ..< len {
//        x = i;
//        y = i + 1;
//        palindrome = 0;
//        
//        while x >= 0 && y < len && charArray[x] == charArray[y] {
//            x -= 1 ;
//            y += 1;
//            palindrome += 2
//        }
//        
//        longest_palindrome = max(longest_palindrome, palindrome);
//        
//        x = i - 1;
//        y = i + 1;
//        palindrome = 1;
//        
//        while x >= 0 && y < len && charArray[x] == charArray[y] {
//            x -= 1;
//            y += 1;
//            palindrome += 2
//        }
//        
//        longest_palindrome = max(longest_palindrome, palindrome);
//    }
//    
//    return longest_palindrome
//}

print("Longest:", (pp.longestPalindromeSubstring(str: str)))

