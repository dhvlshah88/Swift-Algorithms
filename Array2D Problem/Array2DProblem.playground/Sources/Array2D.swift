import Foundation


public class Array2D : NSObject {
    
    public override init() {
        
    }
    
    public func printSpiral(matrix: [[Int]], m: Int, n: Int) -> [Int] {
        var startRow = 0
        var endRow = m
        var startCol = 0
        var endCol = n
        
        var arr : [Int] = []
        arr.reserveCapacity(m*n)
        
        while startRow < endRow && startCol < endCol {
            
            for i in startCol ..< endCol {
                arr.append(matrix[startRow][i])
            }
            startRow += 1;
            
            for i in startRow ..< endRow {
                arr.append(matrix[i][endRow-1])
            }
            endCol -= 1;
            
            if startRow < endRow {
                for i in (endCol-1).stride(through: startCol, by: -1) {
                    arr.append(matrix[endRow-1][i])
                }
                endRow -= 1
            }
            
            if startCol < endCol {
                for i in (endRow-1).stride(through: startRow, by: -1) {
                    arr.append(matrix[i][startCol])
                }
                startCol += 1
            }
        }
        
        return arr
    }
}


