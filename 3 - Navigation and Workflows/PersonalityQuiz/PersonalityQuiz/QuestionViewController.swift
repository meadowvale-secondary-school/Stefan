//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Student2562 on 2019-05-09.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
 
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    var questionIndex: Int = 0
    
    var questions: [Question] = [
        Question(text:"Where do you want to travel?", type: .single, answers:[
            Answer(text:"Germany", type: .Mercedes), Answer(text: "Austria", type: .AlfaRomeo),
            Answer(text: "Italy", type: .Lamborghini), Answer(text: "France", type: .BMW)]),
        
        Question(text: "Which sports do you enjoy?", type: .multiple, answers:[
            Answer(text:"Racing", type: .Mercedes), Answer(text: "Soccer", type: .AlfaRomeo),
            Answer(text: "Basketball", type: .Lamborghini), Answer(text: "Boxing", type: .BMW)]),
        
        Question(text: "How many hours do you sleep a night?", type: .ranged, answers:[
            Answer(text:"5", type: .Mercedes), Answer(text: "6", type: .AlfaRomeo),
            Answer(text: "7", type: .Lamborghini), Answer(text: "Too much", type: .BMW)])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type{
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
    }
    
    func updateSingleStack(using answers : [Answer]){
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateRangedStack(using answers: [Answer]){
        rangedStackView.isHidden = false
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }
    
}
