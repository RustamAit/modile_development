//
//  UserSession.swift
//  test_tutorial_project
//
//  Created by Nurzhan on 06.03.2019.
//  Copyright © 2019 Arthur Belyankov. All rights reserved.
//

import Foundation


struct GameSession: Codable {
    
    var userName: String
    var correctCount: Int
    var wrongCount: Int
    
    init(_ userName: String) {
        self.userName = userName
        self.correctCount = 0
        self.wrongCount = 0
    }
}
