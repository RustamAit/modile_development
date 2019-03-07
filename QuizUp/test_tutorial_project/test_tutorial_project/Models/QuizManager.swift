//
//  QuizManager.swift
//  test_tutorial_project
//
//  Created by Arthur Belyankov on 3/6/19.
//  Copyright © 2019 Arthur Belyankov. All rights reserved.
//

import Foundation


class QuizManager{
    
    var currentIndex = 0
    var score = 0
    var footballQuestions = QuestionGenerator.getFootballQuizQuestions()
    var cinemaQuestions = QuestionGenerator.getCinemaQuizQuestions()
    var artQuestions = QuestionGenerator.getArtQuizQuestions()
    
    
    func getQuestion(_ category: String)->Question{
        switch category {
        case "football":
            return getFootballQuestion(self.currentIndex)
        case "cinema":
            return getCinemaQuestions(self.currentIndex)
        case "art":
            return getArtQuestions(self.currentIndex)
        default:
            return getFootballQuestion(self.currentIndex)
        }
    }
    
    func getQuestionCount(_ category: String)-> Int{
        switch category {
        case "football":
            return footballQuestions.count
        case "cinema":
            return cinemaQuestions.count
        case "art":
            return artQuestions.count
        default:
            return footballQuestions.count
        }
    }
    
    func getFootballQuestion(_ currentIndex: Int)-> Question{
        return footballQuestions[currentIndex]
    }
    
    func getCinemaQuestions(_ currentIndex: Int)-> Question{
        return cinemaQuestions[currentIndex]
    }
    
    func getArtQuestions(_ currentIndex: Int) -> Question{
        return artQuestions[currentIndex]
    }
    
}
