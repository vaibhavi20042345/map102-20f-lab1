//
//  ViewController.swift
//  Quiz
//
//  Created by vaibhavi on 25/06/1942 Saka.
//  Copyright © 1942 vaibhavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
            "What is 7+7?",
            "What is the capital of Vermont?",
            "What is cognac made from?"
            ]
            let answers: [String] = [
                "14",
                "Montpelier",
                "Grapes"
            ]
            var currentQuestionIndex: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = questions[currentQuestionIndex]
    }
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
                currentQuestionIndex = 0
            }

            let question: String = questions[currentQuestionIndex]
            questionLabel.text = question
            answerLabel.text = "???"
        }

    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
            answerLabel.text = answer

        }


}

