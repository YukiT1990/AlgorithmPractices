//
//  lps.swift
//  FinalExamPractice
//
//  Created by Yuki Tsukada on 2021/04/24.
//

import Foundation

func lps() {
    let str = readLine()!
    
    let endIndex = str.count - 1
    
    var counts: [Int] = Array(repeating: 0, count: str.count)
    
    for i in 0..<endIndex {
        for j in 0..<endIndex - i {
            let startChar =  str[str.index(str.startIndex, offsetBy: j)]
            let endChar =  str[str.index(str.startIndex, offsetBy: endIndex - i)]
            if startChar == endChar {
                let startIndexTemp = j
                let endIndexTemp = endIndex - i
                
                var found = true
                
                var start = j
                var end = endIndex - i
                var char3 =  str[str.index(str.startIndex, offsetBy: start)]
                var char4 =  str[str.index(str.startIndex, offsetBy: end)]
                
                while (start <= end) {
                    start += 1
                    end -= 1
                    char3 =  str[str.index(str.startIndex, offsetBy: start)]
                    char4 =  str[str.index(str.startIndex, offsetBy: end)]
                    if char3 != char4 {
                        found = false
                        break
                    }
                }
                if found == true {
                    if counts[startIndexTemp] < endIndexTemp - startIndexTemp + 1 {
                        counts[startIndexTemp] = endIndexTemp - startIndexTemp + 1
                    }
                }
            }
            
        }
    }
    print(counts.max()!)
}
