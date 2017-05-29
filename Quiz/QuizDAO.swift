//
//  QuizDAO.swift
//  Quiz
//
//  Created by ViniGodoy on 12/02/16.
//  Copyright © 2016 HSBC. All rights reserved.
//

import Foundation

class QuizDAO {
    static let instance = QuizDAO()
    
    fileprivate let quiz = Quiz()
    
    init() {
        var question = Question()
        question.text = "Quanto a sintaxe, a linguagem é..."
        question.answers.append("Facil")
        question.answers.append("Média")
        question.answers.append("Difícil")
        quiz.add(question)
        
        question = Question()
        question.text = "Os recursos da linguagem são..."
        question.answers.append("Escassos")
        question.answers.append("Normais")
        question.answers.append("Completos")
        quiz.add(question)
        
        question = Question()
        question.text = "Eu considero a IDE XCode..."
        question.answers.append("Pobre")
        question.answers.append("Similar a outras IDEs")
        question.answers.append("Incrível")
        quiz.add(question)
        
        question = Question()
        question.text = "Minha percepção sobre o mercado Apple é..."
        question.answers.append("Negativa")
        question.answers.append("Similar ao Android")
        question.answers.append("Positiva")
        quiz.add(question)
        
        question = Question()
        question.text = "Eu considero o curso de IOS..."
        question.answers.append("Inútil")
        question.answers.append("Interessante")
        question.answers.append("Importantíssimo")
        quiz.add(question)
    }
    
    func load() -> Quiz {
        return quiz
    }
}
