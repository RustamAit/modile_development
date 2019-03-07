//
//  QuestionModel.swift
//  test_tutorial_project
//
//  Created by Arthur Belyankov on 3/6/19.
//  Copyright © 2019 Arthur Belyankov. All rights reserved.
//

import Foundation

enum Answer{
    case A
    case B
    case C
    case D
    case E
}

class Question{
    var text: String
    var variantA: String
    var variantB: String
    var variantC: String
    var variantD: String
    var answer: Answer
    var img_url: String
    
    init(_ text: String,_ variantA: String,_ variantB: String,_ variantC: String,_ variantD: String,_ Answer: Answer,_ img_url: String) {
    
        self.text = text
        self.variantA = variantA
        self.variantB = variantB
        self.variantC = variantC
        self.variantD = variantD
        self.answer = Answer
        self.img_url = img_url
    }

}
