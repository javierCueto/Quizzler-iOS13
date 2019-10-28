//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by José Javier Cueto Mejía on 27/10/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text : String
    let answer : String
    
    init (q : String, a : String){
        text = q
        answer = a
    }
}
