//
//  CategoryViewController.swift
//  test_tutorial_project
//
//  Created by Nurzhan on 07.03.2019.
//  Copyright © 2019 Arthur Belyankov. All rights reserved.
//

import UIKit

class CategoryViewController : UIViewController{
    @IBOutlet weak var footballCategoryBtn: UIButton!
    @IBOutlet weak var cinemaCategoryBtn: UIButton!
    @IBOutlet weak var artCategoryBtn: UIButton!
    
    var userName: String = ""
    
    override func viewDidLoad() {
        super .viewDidLoad()
        footballCategoryBtn.addTarget(self,action: #selector(categoryOnClickListener(_:)),for: .touchUpInside)
        cinemaCategoryBtn.addTarget(self,action: #selector(categoryOnClickListener(_:)),for: .touchUpInside)
        artCategoryBtn.addTarget(self,action: #selector(categoryOnClickListener(_:)),for: .touchUpInside)

    }
    
    
    @objc func categoryOnClickListener(_ sender: UIButton){
        let category = getCategoryFromTag(sender.tag)
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let quizViewController =
                    storyBoard.instantiateViewController(withIdentifier: "quizViewController") as! QuizViewController
                quizViewController.title = "Quiz"
                quizViewController.userName = self.userName
                quizViewController.category = category
        
                navigationController?.pushViewController(quizViewController, animated: true)
    }
    
    private func getCategoryFromTag(_ tag: Int) -> String{
        switch tag {
        case 1:
            return "football"
        case 2:
            return "art"
        case 3:
            return "cinema"
        default:
            return "football"
        }
    }
}
