//
//  EditQuestionViewController.swift
//  Quiz
//
//  Created by vinigodoy on 14/02/16.
//  Copyright © 2016 HSBC. All rights reserved.
//

import UIKit

class EditQuestionViewController: UIViewController {
    
    @IBOutlet weak var txtQuestion: UITextField!
    @IBOutlet weak var txtAnswer1: UITextField!
    @IBOutlet weak var txtAnswer2: UITextField!
    @IBOutlet weak var txtAnswer3: UITextField!
    
    var owner : QuestionTableViewController?

    @IBAction func onCancelClick(_ sender: AnyObject) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnSaveClick(_ sender: AnyObject) {
        let q = Question()
        q.text = txtQuestion.text!
        q.answers.append(txtAnswer1.text!)
        q.answers.append(txtAnswer2.text!)
        q.answers.append(txtAnswer3.text!)
        owner?.addQuestion(q)
        navigationController?.popViewController(animated: true)
    }    
}
