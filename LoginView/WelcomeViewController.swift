//
//  WelcomeViewController.swift
//  LoginView
//
//  Created by DAV on 19.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func logOutButton() {
        dismiss(animated: true)
        print("Я кнопка")
    }
    
}
