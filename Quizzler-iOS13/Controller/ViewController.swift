//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    var position = 0
    
    var quizBrain = QuestionBrain()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }


    @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let isQuestionRight = quizBrain.checkAnswer(userAnswer)
        
        if isQuestionRight{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.sumPosition()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(nextQuestion), userInfo: nil, repeats: false)
        
    }
    
    @objc func nextQuestion(){
        questionLabel.text = quizBrain.getPosition()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score \(quizBrain.getScore())"
    }
}

