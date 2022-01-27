//
//  WelcomeViewController.swift
//  LoginView
//
//  Created by DAV on 19.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
    }
    

//    @IBAction func logOutButton() {
//        dismiss(animated: true)
//    }
    
}
