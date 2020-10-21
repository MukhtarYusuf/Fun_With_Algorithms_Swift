import UIKit

// Utilities
func printMatrix(_ mat: [[Any]]) {
    var output = ""
    for i in 0 ..< mat.count {
        output.append("[")
        for j in 0 ..< mat[0].count {
            output.append("\(mat[i][j])")
            if j != mat[0].count-1 {
                output.append(", ")
            }
        }
        output.append("] \n")
    }
    print(output)
}

var str = "Hello, playground"
var str1 = "abcdeA"
var str2 = "bcaAde"
var str3 = "abc"
var arr = Array(str) + [" ", " ", " ", " "]
var mat = [[0, 2, 3, 4],
           [5, 6, 7, 8],
           [9, 0, 11, 12],
           [13, 14, 15, 16]]

// -- Solutions --

// 1a. Time: O(n2), Space: O(1)
func containsDups(s: String?) -> Bool {
    guard let string = s else { return false }
    if string.isEmpty { return false }
    
    for i in 0 ..< string.count-1 {
        for j in i+1 ..< string.count {
            let firstIndex = string.index(string.startIndex, offsetBy: i)
            let secondIndex = string.index(string.startIndex, offsetBy: j)
            if string[firstIndex] == string[secondIndex] {
                return true
            }
        }
    }
    
    return false
}
