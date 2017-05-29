//
//  QuestionTableViewController.swift
//  Quiz
//
//  Created by vinigodoy on 13/02/16.
//  Copyright © 2016 HSBC. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    var quiz : Quiz!
    
    override func viewDidLoad() {
        quiz = QuizDAO.instance.load()
        navigationItem.rightBarButtonItems?.append(editButtonItem)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quiz.questions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ID = "QuizCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: ID)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: ID)
        }
        
        cell?.textLabel?.text = quiz.questions[indexPath.row].text
        return cell!
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            quiz.remove(indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func addQuestion(_ question : Question) {
        quiz.add(question)
        
        let cell = IndexPath(row: quiz.questions.count - 1, section: 0)
        tableView.beginUpdates()
        tableView.insertRows(at: [cell], with: .bottom)
        tableView.endUpdates()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "add" {
            let next = segue.destination as! EditQuestionViewController
            next.owner = self
        }
    }

}
