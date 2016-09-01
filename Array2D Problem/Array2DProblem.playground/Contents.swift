//: Playground - noun: a place where people can play

let matrix : [[Int]] = [
                [ 1,  2,  3,  4],
                [ 6,  7,  8,  9],
                [10, 11, 12, 13],
                [14, 15, 16, 17]
            ]

let m = matrix.count
let n = matrix[0].count
let arr = Array2D()

var spriralArr = arr.printSpiral(matrix, m: m, n: n)
