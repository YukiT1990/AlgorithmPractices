//
//  duplicate.swift
//  FinalExamPractice
//
//  Created by Yuki Tsukada on 2021/04/24.
//

import Foundation

func duplicate() {
    let nums: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
    
    // sum of nums - N(N+1)/2
    print(nums.reduce(0, +) - (nums.count - 1) * (nums.count) / 2)
}
