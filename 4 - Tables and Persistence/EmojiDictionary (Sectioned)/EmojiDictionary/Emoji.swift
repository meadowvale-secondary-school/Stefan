//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Student2562 on 2019-05-28.
//  Copyright © 2019 Student2562. All rights reserved.
//

import Foundation
import UIKit

class Emoji{
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init (symbol:String, name:String, description:String, usage:String){
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
    
class organisedEmojis {
    var smileys: [Emoji]
    var animals: [Emoji]
    var food: [Emoji]
    var activity: [Emoji]
    var travel: [Emoji]
    var objects: [Emoji]
    var symbols: [Emoji]
    var flags: [Emoji]
        
    init (smileys: [Emoji], animals: [Emoji], food: [Emoji], activity: [Emoji], travel: [Emoji], objects: [Emoji], symbols: [Emoji], flags: [Emoji]){
            
        self.smileys = smileys
        self.animals = animals
        self.food = food
        self.activity = activity
        self.travel = travel
        self.objects = objects
        self.symbols = symbols
        self.flags = flags
        
    }
}

