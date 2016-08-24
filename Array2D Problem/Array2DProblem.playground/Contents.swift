//: Playground - noun: a place where people can play

let matrix : [[Int]] = [
                [ 1,  2,  3,  4],
                [ 6,  7,  8,  9],
                [10, 11, 12, 13],
                [14, 15, 16, 17]
            ]

let m = matrix.count
let n = matrix[0].count
var arr : [Int] = []
arr.reserveCapacity(m*n)

func printSpiral(matrix: [[Int]], m: Int, n: Int) -> Void {
    var startRow = 0
    var endRow = m
    var startCol = 0
    var endCol = n
    
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
    
    print(arr)
}


printSpiral(matrix, m: m, n: n)
