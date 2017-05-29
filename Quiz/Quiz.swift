//
//  Quiz.swift
//  Quiz
//
//  Created by ViniGodoy on 12/02/16.
//  Copyright © 2016 HSBC. All rights reserved.
//

import Foundation

class Quiz {
    //Stored properties
    fileprivate (set) var currentNumber = 0
    fileprivate (set) var questions = [Question]()
    
    //Calculated properties
    var current : Question {
        return questions[currentNumber]
    }
    
    var isLast : Bool {
        return currentNumber == questions.count - 1
    }
    
    var isFirst : Bool {
        return currentNumber == 0
    }
    
    //Methods
    func reset() {
        currentNumber = 0
    }
    
    func next() {
        if currentNumber < questions.count - 1 {
            currentNumber++
        }
    }
    
    func previous() {
        if currentNumber > 0 {
            currentNumber--
        }
    }
    
    func add(_ question: Question) {
        questions.append(question)
        reset()
    }
    
    func remove(_ number : Int) {
        questions.remove(at: number)
        reset()
    }
}
