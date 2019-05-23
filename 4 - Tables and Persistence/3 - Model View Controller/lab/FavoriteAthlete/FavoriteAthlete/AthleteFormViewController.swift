//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Student2562 on 2019-05-21.
//

import Foundation
import UIKit


class AthleteFormViewController: UIViewController{
   
    @IBOutlet weak var athleteNameTextField: UITextField!
    @IBOutlet weak var athleteAgeTextField: UITextField!
    @IBOutlet weak var athleteLeagueTextField: UITextField!
    @IBOutlet weak var athleteTeamTextField: UITextField!
    
    @IBAction func saveButtonAction(_ sender: Any) {
        guard let name = athleteNameTextField.text, let age = athleteAgeTextField.text, let league = athleteLeagueTextField.text, let team = athleteTeamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        
        performSegue(withIdentifier: "unwindAfterSaveIdentifier", sender: self)
    }
    
    var athlete: Athlete?
    
    func updateView(){
        guard let athlete = athlete else {return}
        athleteNameTextField.text = athlete.name
        athleteAgeTextField.text = athlete.age
        athleteLeagueTextField.text = athlete.league
        athleteTeamTextField.text = athlete.team
    }
    
    override func viewDidLoad() {
        updateView()
    }
    
}
