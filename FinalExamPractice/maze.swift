//
//  maze.swift
//  FinalExamPractice
//
//  Created by Yuki Tsukada on 2021/04/24.
//

import Foundation

func maze() {
    let t = Int(readLine()!)!
    
    for _ in 0..<t {
        
        let r = Int(readLine()!)!
        let c = Int(readLine()!)!
        
        var char2DArray: [[Character]] = []
        for _ in 0..<r {
            let arr = Array(readLine()!)
            char2DArray.append(arr)
        }
        
        var resultMatrix: [[Int]] = [[Int]](repeating: [Int](repeating: 400, count: c), count: r)
        resultMatrix[0][0] = 1
        
        for x in 0..<r {
            for y in 0..<c {
                if char2DArray[x][y] == "+" {
                    if y + 1 < c && char2DArray[x][y + 1] != "*" {
                        if resultMatrix[x][y + 1] > resultMatrix[x][y] + 1 {
                            resultMatrix[x][y + 1] = resultMatrix[x][y] + 1
                        }
                    }
                    if x + 1 < r && char2DArray[x + 1][y] != "*" {
                        if resultMatrix[x + 1][y] > resultMatrix[x][y] + 1 {
                            resultMatrix[x + 1][y] = resultMatrix[x][y] + 1
                        }
                    }
                } else if char2DArray[x][y] == "-" {
                    if y + 1 < c && char2DArray[x][y + 1] != "*" {
                        if resultMatrix[x][y + 1] > resultMatrix[x][y] + 1 {
                            resultMatrix[x][y + 1] = resultMatrix[x][y] + 1
                        }
                    }
                } else if char2DArray[x][y] == "|" {
                    if x + 1 < r && char2DArray[x + 1][y] != "*" {
                        if resultMatrix[x + 1][y] > resultMatrix[x][y] + 1 {
                            resultMatrix[x + 1][y] = resultMatrix[x][y] + 1
                        }
                    }
                } else if char2DArray[x][y] == "*" {
                    continue
                }
            }
        }
        
        if resultMatrix[r - 1][c - 1] != 400 {
            print(resultMatrix[r - 1][c - 1])
        } else {
            print(-1)
        }
        
    }
}
