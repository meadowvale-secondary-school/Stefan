//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Student2562 on 2019-05-10.
//  Copyright © 2019 Student2562. All rights reserved.
//

import Foundation

struct Question{
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType{
    case single, multiple, ranged
}

struct Answer{
    var text: String
    var type: CarType
}
    
enum CarType{
    case Mercedes, BMW, AlfaRomeo, Lamborghini
        
    var definition: String{
        switch self {
        case.Mercedes:
            return "Raw and powerful you only work when you need to"
        case.BMW:
            return "Light on your feet and adaptable to any situation"
        case.AlfaRomeo:
            return "You are a mysterious person with alot to say and show but remain humble"
        case.Lamborghini:
            return "Travelling is your dream and you can't stay still"
        }
    }
}
