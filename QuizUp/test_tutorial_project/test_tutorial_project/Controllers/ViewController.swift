//
//  ViewController.swift
//  test_tutorial_project
//
//  Created by Arthur Belyankov on 3/6/19.
//  Copyright © 2019 Arthur Belyankov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var startQuizBtn: UIButton!
    override func viewDidLoad() {

        super.viewDidLoad()
        startQuizBtn.addTarget(self, action:#selector(changeLabelText(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func changeLabelText(_ sender: UIButton){
    
        nameLabel.text = userNameField.text
        
        if(nameLabel.text != ""){
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let categoryViewController =
                storyBoard.instantiateViewController(withIdentifier: "categoryViewController") as! CategoryViewController
            categoryViewController.title = "Choose Category"
            categoryViewController.userName = nameLabel.text!
            
            navigationController?.pushViewController(categoryViewController, animated: true)
        }
        else{
            showToast("Введите имя пользователя")
        }

        
    }
    
    func showToast(_ message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 12.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }


}

