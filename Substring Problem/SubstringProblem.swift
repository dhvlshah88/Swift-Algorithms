//
//  SubstringProblem.swift
//  
//
//  Created by Dhaval on 8/24/16.
//
//

import Foundation

class SubstringProblem : NSObject {
    
    public override init() {
        
    }
    
    //Longest substring which contains two unique character
    func longestSubstringWithTwoUniqueCharacter(str:String) -> Int {
        var longLen = 0
        var start = 0
        var charMap = [Character:Int]()
        
        for i in 0 ..< str.characters.count {
            let c = str[str.startIndex.advancedBy(i)]
            if let count = charMap[c] {
                charMap[c] = count + 1
            } else {
                charMap[c] = 1;
            }
            
            if charMap.count > 2 {
                longLen = max(longLen, i - start)
                
                while charMap.count > 2 {
                    let char = str[str.startIndex.advancedBy(start)]
                    
                    if let count = charMap[char] {
                        charMap[char] = count - 1;
                    } else {
                        charMap.removeValueForKey(char)
                    }
                    start += 1
                }
            }
        }
        
        longLen = max(longLen, str.characters.count-start)
        return longLen
    }
}
