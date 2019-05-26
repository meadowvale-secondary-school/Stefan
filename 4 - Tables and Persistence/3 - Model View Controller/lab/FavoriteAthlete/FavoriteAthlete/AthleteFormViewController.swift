//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Student2562 on 2019-05-21.
//

import Foundation
import UIKit


class AthleteFormViewController: UIViewController{
   
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    @IBAction func saveButtonAction(_ sender: Any) {
        guard let name = nameTextField.text, let age = ageTextField.text, let league = leagueTextField.text, let team = teamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        
        performSegue(withIdentifier: "unwindAfterSaveIdentifier", sender: self)
    }
    
    var athlete: Athlete?
    
    func updateView(){
        guard let athlete = athlete else {return}
        nameTextField.text = athlete.name
        ageTextField.text = athlete.age
        leagueTextField.text = athlete.league
        teamTextField.text = athlete.team
    }
    
    override func viewDidLoad() {
        updateView()
    }
    
}
