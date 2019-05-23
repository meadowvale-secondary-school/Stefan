//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Student2562 on 2019-05-21.
//

import Foundation

struct Athlete{
    var name: String
    var age: String
    var league: String
    var team: String
    
    var description:String{
        return "\(name) is \(age) years old and plays for \(team) in the \(league)."
    }
}
