//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Student2562 on 2019-05-09.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var responses: [Answer]!
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    // App Launches
    override func viewDidLoad() {
        super.viewDidLoad()
        print(responses)
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true

    }
    
    func calculatePersonalityResult(){
        var frequencyOfAnswers: [CarType: Int] = [:]
        let responseTypes = responses.map {$0.type}
        for response in responseTypes{
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0)+1
        }
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: { (pair1,pair2) -> Bool in return pair1.value > pair2.value })
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        resultAnswerLabel.text = ("You are a \(mostCommonAnswer)!")
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }

}
