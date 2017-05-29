//
//  QuizViewController.swift
//  Quiz
//
//  Created by vinigodoy on 13/02/16.
//  Copyright © 2016 HSBC. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var lblQuestion: UILabel!
    
    @IBOutlet weak var btnAnswer1: UIButton!
    @IBOutlet weak var btnAnswer2: UIButton!
    @IBOutlet weak var btnAnswer3: UIButton!
    
    var quiz : Quiz!

    override func viewDidLoad() {
        quiz = QuizDAO.instance.load()
        showQuestion(quiz.current)
    }
    
    func showQuestion(_ question : Question) {
        lblQuestion.text = question.text
        btnAnswer1.setTitle(question.answers[0], for: UIControlState())
        btnAnswer2.setTitle(question.answers[1], for: UIControlState())
        btnAnswer3.setTitle(question.answers[2], for: UIControlState())
        
    }
    
    func next() {
        if (!quiz.isLast) {
            quiz.next()
        } else {
            //quiz.reset()
            navigationController?.popViewController(animated: true)
        }
        showQuestion(quiz.current)
    }
    
    @IBAction func answer1Click(_ sender: AnyObject) {
        next()
    }
    
    @IBAction func answer2Click(_ sender: AnyObject) {
        next()
    }
    
    
}
