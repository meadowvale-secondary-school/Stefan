//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Student2562 on 2019-05-09.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
 
    @IBOutlet weak var rangedStackView: UIStackView!
    
    @IBOutlet weak var singleStackView: UIStackView!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    
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
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        
        switch currentQuestion.type{
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        }
    }
    
}
