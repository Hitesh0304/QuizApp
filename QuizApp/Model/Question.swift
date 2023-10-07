//
//  Question.swift
//  QuizApp
//
//  Created by Hitesh Moudgil on 2023-10-06.
//

import Foundation

struct Question {
    let text : String
    let answer: String
    
    init(q : String, a: String) {
        text = q
        answer = a
    }
}


