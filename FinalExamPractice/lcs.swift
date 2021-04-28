//
//  lcs.swift
//  FinalExamPractice
//
//  Created by Yuki Tsukada on 2021/04/24.
//

import Foundation

func lcs() {
    let s1 = readLine()!
    let s2 = readLine()!

    let lenS1 = s1.count
    let lenS2 = s2.count
    
    var matrix: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: lenS2 + 1), count: lenS1 + 1)
    
    for i in 0...lenS1 {
        for j in 0...lenS2 {
            if i == 0 || j == 0 {
                matrix[i][j] = 0
            } else if s1[s1.index(s1.startIndex, offsetBy: i - 1)] == s2[s2.index(s2.startIndex, offsetBy: j - 1)] {
                matrix[i][j] = matrix[i - 1][j - 1] + 1
            } else {
                matrix[i][j] = [matrix[i - 1][j], matrix[i][j - 1]].max()!
            }
        }
    }
    print(matrix[lenS1][lenS2])
}
