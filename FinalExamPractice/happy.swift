//
//  happy.swift
//  FinalExamPractice
//
//  Created by Yuki Tsukada on 2021/04/24.
//

import Foundation

func happy() {
    let str = readLine()!
    
    let happy = ":-)"
    let sad = ":-("
    
    var numOfHappies = 0
    var numOfSads = 0
    
    let tok1 =  str.components(separatedBy: happy)
    numOfHappies = tok1.count - 1
    
    let tok2 =  str.components(separatedBy: sad)
    numOfSads = tok2.count - 1
    
    if numOfHappies == 0 && numOfSads == 0 {
        print("none")
        return
    }
    
    if numOfHappies > numOfSads {
        print("happy")
    } else if numOfHappies < numOfSads {
        print("sad")
    } else if numOfHappies == numOfSads {
        print("unsure")
    }
}
