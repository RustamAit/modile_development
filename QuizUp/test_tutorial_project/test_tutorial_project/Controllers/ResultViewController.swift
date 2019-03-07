//
//  ResultViewController.swift
//  test_tutorial_project
//
//  Created by Nurzhan on 06.03.2019.
//  Copyright © 2019 Arthur Belyankov. All rights reserved.
//

import UIKit

class ResultViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var wrongAnswerCountLabel: UILabel!
    @IBOutlet weak var correctAnswerCountLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var gameSession: GameSession? = nil

    var sessions: [GameSession] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = UserDefaults.standard.value(forKey: "gameSessions") as! Data
        
        sessions = try! PropertyListDecoder().decode(Array<GameSession>.self, from: data)
 
        correctAnswerCountLabel.text = String(gameSession!.correctCount)
        wrongAnswerCountLabel.text = String(gameSession!.wrongCount)
        userNameLabel.text = gameSession?.userName
        
        sessions.append(gameSession!)
        
        do {
            UserDefaults.standard.setValue(try! PropertyListEncoder().encode(sessions), forKey: "gameSessions")
        }catch let error{
            print(error)
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let session = sessions[indexPath.row]
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = session.userName
        cell.detailTextLabel?.text = "\(session.correctCount)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(sessions == nil){
            return 0
        }
        else{
            return sessions.count
        }
    }
    
}
