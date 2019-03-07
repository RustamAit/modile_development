//
//  QuizViewController.swift
//  test_tutorial_project
//
//  Created by Arthur Belyankov on 3/6/19.
//  Copyright © 2019 Arthur Belyankov. All rights reserved.
//
 import UIKit



class QuizViewController: UIViewController{
    
    @IBOutlet weak var questionText: UITextView!
    @IBOutlet weak var questionImage: UIImageView!
    
    @IBOutlet weak var firstVarBtn: UIButton!
    
    @IBOutlet weak var secondVarBtn: UIButton!
    @IBOutlet weak var fourthVarBtn: UIButton!
    
    @IBOutlet weak var thirdVarBtn: UIButton!
    
    var userName: String = ""
    var category: String = ""
    var manager = QuizManager()
    var question: Question? = nil
    var gameSession: GameSession? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.currentIndex = 0
        gameSession = GameSession(userName)
        displayQuestion()
    }
    
   private  func displayQuestion()  {
        self.question = manager.getQuestion(category)
        if(manager.currentIndex != manager.getQuestionCount(category)-1){
            manager.currentIndex += 1
        }
        else{
            startResultViewController()
        }
        questionText.text = self.question!.text
        firstVarBtn.backgroundColor = UIColor.blue
        secondVarBtn.backgroundColor = UIColor.blue
        thirdVarBtn.backgroundColor = UIColor.blue
        fourthVarBtn.backgroundColor = UIColor.blue

        firstVarBtn.setTitle(self.question!.variantA, for: .normal)
        secondVarBtn.setTitle(self.question!.variantB, for: .normal)
        thirdVarBtn.setTitle(self.question!.variantC, for: .normal)
        fourthVarBtn.setTitle(self.question!.variantD, for: .normal)
        displayQuestionImage()
        setBtnOnClicks()
    }
    
    
    private func setBtnOnClicks(){
        firstVarBtn.addTarget(self, action: #selector(onVarBtnClick(sender:)), for: .touchUpInside)
        secondVarBtn.addTarget(self, action: #selector(onVarBtnClick(sender:)), for: .touchUpInside)
        thirdVarBtn.addTarget(self, action: #selector(onVarBtnClick(sender:)), for: .touchUpInside)
        fourthVarBtn.addTarget(self, action: #selector(onVarBtnClick(sender:)), for: .touchUpInside)
    }
    
    private func displayQuestionImage(){
        let url = URL(string: question!.img_url)
        let request = URLRequest(url: url!)
        let session = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if error == nil {
                guard let data = data else {
                    return
                }
                let image = UIImage(data: data)
                DispatchQueue.main.async {
                    self.questionImage.image = image
                }
            }
        }
        session.resume()
    }
    
    
    @objc func onVarBtnClick (sender: UIButton){
        print(sender.tag)
        if(getButtonVariant(sender.tag) == question!.answer){
            
            let correctButton: UIButton = view.viewWithTag(sender.tag) as! UIButton
            correctButton.backgroundColor = UIColor.green
            
            gameSession?.correctCount += 1
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                self.displayQuestion()
            }            
        }
        else{
            gameSession?.wrongCount += 1
            
            let correctButton: UIButton = view.viewWithTag(getRightAnswerButtonIndex(question!.answer)) as! UIButton
            correctButton.backgroundColor = UIColor.green
            
            let wrongButton: UIButton = view.viewWithTag(sender.tag) as! UIButton
            wrongButton.backgroundColor = UIColor.red
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                self.displayQuestion()
            }
            
        }
    }
    
    private func startResultViewController(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let resultViewController =
            storyBoard.instantiateViewController(withIdentifier: "resultViewController") as! ResultViewController
        resultViewController.title = "Results"
        resultViewController.gameSession = gameSession
        
        navigationController?.pushViewController(resultViewController, animated: true)
    }
    
    private func getButtonVariant(_ buttonIndex: Int) ->  Answer {
        switch buttonIndex {
        case 1:
            return .A
        case 2:
            return .B
        case 3:
            return .C
        case 4:
            return .D
        default:
            return .A
        }
    }
    
    private func getRightAnswerButtonIndex(_ answer: Answer) -> Int{
        switch answer {
        case .A:
            return 1
        case .B:
            return 2
        case .C:
            return 3
        case .D:
            return 4
        default:
            return 1
        }
    }
    
    
}
