//
//  ViewController.swift
//  LoginView
//
//  Created by DAV on 19.01.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameValueTF: UITextField!
    @IBOutlet var passwordValueTF: UITextField!
    
    private var userNameSession = ""
    private let namePasswordArray = ["User" : "1234", "Admin": "12345"]
    
    @IBAction func forgotNameButton() {
        showAlert(with: "", and: "Your name is User")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "", and: "Your password is 1234")
    }
    
    @IBAction func logInButton() {
        userNameValueTF.text!.isEmpty ? showAlert(with: "Attention", and: "Enter your name" ) : print("Name enter")
        passwordValueTF.text!.isEmpty ? showAlert(with: "Attention", and: "Enter your password" ) : print("Password enter")
        for (userName, password) in namePasswordArray {
            userNameSession = userName
            if userNameValueTF.text != userName || passwordValueTF.text != password {
                showAlert(with: "Attention", and: "Your name or password is wrong")
            }
            break
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.source is WelcomeViewController else { return }
        userNameValueTF.text = ""
        passwordValueTF.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let WelcomeVC = segue.destination as? WelcomeViewController else { return }
        WelcomeVC.userName = userNameSession
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

// Extension:
    
// скрытие клавиатуры по нажатию на вью
    internal override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    if touches.first != nil {
        view.endEditing(true)
    }
    super.touchesBegan(touches, with: event)
}
// переход по клавише next-done
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if textField == userNameValueTF {
        passwordValueTF.becomeFirstResponder()
    } else {
        passwordValueTF.resignFirstResponder()
        logInButton()
        return true;
    }
    return false
    }
}
