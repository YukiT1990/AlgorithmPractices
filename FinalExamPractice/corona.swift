//
//  corona.swift
//  FinalExamPractice
//
//  Created by Yuki Tsukada on 2021/04/24.
//

import Foundation

func corona() {
    let P = Int(readLine()!)!
    let N = Int(readLine()!)!
    let R = Int(readLine()!)!
    
    var days: Int = 0
    
    var numOfInfectedToday: Int = N * R
    var sumOfInfected: Int = N
    
    while sumOfInfected <= P {
        days += 1
        sumOfInfected += numOfInfectedToday
        numOfInfectedToday *= R
    }
    
    print(days)
}
