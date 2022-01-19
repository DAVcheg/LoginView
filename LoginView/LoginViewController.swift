//
//  ViewController.swift
//  LoginView
//
//  Created by DAV on 19.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
   
    private let namePasswordArray = ("String" : "String")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func forgotNameButton() {
        let alertController = UIAlertController(
            title: "Oops!",
            message: "Your name is User",
            preferredStyle:.alert)
        // создаем кнопку OK
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        // Добавляем обе кнопки в Alert Controller
        alertController.addAction(actionOK)
        self.present(alertController, animated: true, completion: nil)
    }

    
    @IBAction func forgotPasswordButton() {
        let alertController = UIAlertController(
            title: "Oops!",
            message: "Your password is Password",
            preferredStyle:.alert)
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(actionOK)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

