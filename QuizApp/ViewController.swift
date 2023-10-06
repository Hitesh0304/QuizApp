//
//  ViewController.swift
//  QuizApp
//
//  Created by Hitesh Moudgil on 2023-10-05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six.","True"],
        ["Four - Two is equal to Two.","True"],
        ["Four + Nine is less than Ten.","False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle //True, False
        let actualAnswer = quiz[questionNumber][1]
        
        if(userAnswer == actualAnswer){
            print("right")
        }
        else {
            print("wrong")
        }
        
        if(questionNumber + 1 < quiz.count) {
            questionNumber += 1
            
        } else {
            questionNumber = 0
        }
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    
    
}

