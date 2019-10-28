//
//  ViewController.swift
//  Quiz
//
//  Created by Mohit Chaudhary on 10/27/19.
//  Copyright © 2019 Mohit Chaudhary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
    "what is 10 / 2",
    "What is 20 / 2",
    "what is 30 / 2",
    "what is 40 / 2"
    ]
    
    let answers: [String] = [
    "5",
    "10",
    "15",
    "20"
    ]
    
    var currentQuestionIndex = 0;
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex+=1
        if(currentQuestionIndex == questions.count){
            currentQuestionIndex = 0;
        }
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"

    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        answerLabel.text = answers[currentQuestionIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }


}


