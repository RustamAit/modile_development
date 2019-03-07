//
//  AddContactViewController.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

protocol AddContactDelegate {
    func didCreateContact(contact: Contact)
}


class AddContactViewController: UIViewController, ColorSelectViewControllerDelegate {

    @IBOutlet weak var firstnameField: UITextField!
    @IBOutlet weak var lastnameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!

    var delegate: AddContactDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let addButton = UIBarButtonItem.init(title: "Add", style: .done, target: self, action: #selector(addTapped))
        
        self.navigationItem.rightBarButtonItem = addButton
    }
    
    @objc
    func addTapped() {
        
        if(firstnameField.text==""){
            showToast("FirstName is empty")
            return
        }
        
        if(phoneField.text == ""){
            showToast("PhoneNumber is empty")
            return
        }
        
        let colorSelectViewController = storyboard?.instantiateViewController(withIdentifier: "ColorSelect") as! ColorSelectViewController
        colorSelectViewController.modalPresentationStyle = .overFullScreen
        colorSelectViewController.modalTransitionStyle = .crossDissolve
        colorSelectViewController.delegate = self
        present(colorSelectViewController, animated: true, completion: nil)
    }
    
    func didSelectColor(_ color: TagColor) {
        let contact = Contact(firstname: firstnameField.text ?? "", lastname: lastnameField.text ?? "", phone: phoneField.text ?? "", tag: color.rawValue)
        
        delegate?.didCreateContact(contact: contact)
        self.navigationController?.popViewController(animated: true)
        
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
    }}

