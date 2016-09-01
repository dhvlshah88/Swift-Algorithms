//
//  SpreadsheetProblem.swift
//  StringProblems
//
//  Created by Dhaval on 8/30/16.
//  Copyright © 2016 Dhaval. All rights reserved.
//

import Foundation

public class SpreadsheetProblem : NSObject {
    
    var charMap : Dictionary = [String : Int]();
    
    public override init() {
         charMap = [
                    "A" : 1,
                    "B" : 2,
                    "C" : 3,
                    "D" : 4,
                    "E" : 5,
                    "F" : 6,
                    "G" : 7,
                    "H" : 8,
                    "I" : 9,
                    "J" : 10,
                    "K" : 11,
                    "L" : 12,
                    "M" : 13,
                    "N" : 14,
                    "O" : 15,
                    "P" : 16,
                    "Q" : 17,
                    "R" : 18,
                    "S" : 19,
                    "T" : 20,
                    "U" : 21,
                    "V" : 22,
                    "W" : 23,
                    "X" : 24,
                    "Y" : 25,
                    "Z" : 26
                ]
    }
    
    public func convertColumnName(columnName : String!) -> Int64 {
        var id : Int64 = 0;
        
        guard let column : String = columnName where !columnName.isEmpty else {
            print("String is nil or empty")
            return id;
        }
        
        var len = column.characters.count;
        if len > 1 {
            var total : Double = 0;
            for c in column.characters {
                if let charValue : Int = charMap[String(c)] {
                    total += Double(charValue) * pow(26.0, Double(len-1))
                    len -= 1
                }
            }
            id = Int64(total)
        } else {
            if let charValue : Int = charMap[column] {
                id = Int64(charValue)
            }
        }
    
        return id;
    }
}
