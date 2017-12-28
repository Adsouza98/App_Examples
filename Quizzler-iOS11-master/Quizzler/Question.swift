		//
//  Question.swift
//  Quizzler
//
//  Created by Andre D'Souza on 2017-12-26.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation
        
class Question {
    let questionText : String
    let answer : Bool
    
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer	
    }
}
