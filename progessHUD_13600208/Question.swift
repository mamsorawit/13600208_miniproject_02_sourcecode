//
//  Question.swift
//  progessHUD_13600208
//
//  Created by ICT on 16/11/2561 BE.
//  Copyright © 2561 Pajongpong Luangkumdang. All rights reserved.
//

import Foundation

class Question{
    let questionImage:String
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    
    init(image: String, questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int){
        questionImage = image
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
    }
        
    
}
