//
//  patternMatch.swift
//  FinalExamPractice
//
//  Created by Yuki Tsukada on 2021/04/24.
//

import Foundation

func patternMatch() {
    let N = Int(readLine()!)!
    var stringArray: [String] = []
    
    for _ in 0..<N {
        let str = readLine()!
        stringArray.append(str)
    }
    
    let pattern = readLine()!
    
    for i in 0..<N {
        let query = stringArray[i]
        var indexQ = 0
        var indexP = 0

        var foundCount = 0
        var finish: Bool = false
        
        while indexQ < query.count && indexP < pattern.count {
            let currentQChar = query[query.index(query.startIndex, offsetBy: indexQ)]
            let currentPChar = pattern[pattern.index(pattern.startIndex, offsetBy: indexP)]
            if currentQChar == currentPChar {
                indexP += 1
                indexQ += 1
                foundCount += 1
            } else {
                if currentQChar.isUppercase {
                    print(false)
                    finish = true
                    break
                }
                if foundCount < pattern.count - 1 {
                    if currentQChar == pattern[pattern.index(pattern.startIndex, offsetBy: foundCount + 1)] {
                        print(false)
                        finish = true
                        break
                    }
                }
                
                indexQ += 1
                if indexQ == query.count {
                    print(false)
                    finish = true
                    break
                }
            }
        }
        if finish == false {
            var currentQChar = query[query.index(query.startIndex, offsetBy: indexQ)]
            while indexQ < query.count - 1 {
                if currentQChar.isUppercase {
                    print(false)
                    finish = true
                    break
                }
                indexQ += 1
                currentQChar = query[query.index(query.startIndex, offsetBy: indexQ)]
            }
        }
        if finish == false {
            print(true)
        }
    }
    
    
}
