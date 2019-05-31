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

class OrganisedEmojis {
    
    var emojis: [[Emoji]]
    
    init(emojis:[[Emoji]]){
        self.emojis = emojis
    }
}
