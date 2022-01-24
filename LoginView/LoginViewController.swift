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
    
    private var userNameSession = "User"
    private let namePasswordArray = ["User" : "Password"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        userNameValueTF.delegate = self
        userNameValueTF.tag = 0
//        passwordValueTF.delegate = self
        passwordValueTF.tag = 1
    }
    
    @IBAction func forgotNameButton() {
        showAlert(with: "", and: "Your name is \(userNameSession)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "", and: "Your password is Password")
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
        return true;
    }
    return false
 }

}
//    extension UITextField {
//        class func connectFields(fields:[UITextField]) -> Void {
//            guard let last = fields.last else {
//                return
//            }
//            for i in 0 ..< fields.count - 1 {
//                fields[i].addTarget(fields[i+1], action: (UIResponder.becomeFirstResponder), for: .editingDidEndOnExit)
//            }
//            last.returnKeyType = .go
//            last.addTarget(last, action: (UIResponder.resignFirstResponder), for: .editingDidEndOnExit)
//        }
//    }

//            while userNameValueTF.text != userName || passwordValueTF.text != password {
//                showAlert(with: "Oops!", and: "Your name or password is wrong")
//                print("Your name or password is wrong")
//                break
//            }
            //            guard (userNameValueTF.text == userName) || (passwordValueTF.text == password) else {
            //                showAlert(with: "Oops!", and: "Your name or password is wrong")
            //                print("Your name or password is wrong")
            //                return
            //            }

//        if userNameValueTF.text != nil, userNameValueTF.text?.count != 0 {
//            for (userName, _) in namePasswordArray {
//                if userNameValueTF.text == userName {
//                    continue
//                }
//            }
//        } else {
//            let alertController = UIAlertController(
//                title: "",
//                message: "Enter your name",
//                preferredStyle:.alert)
//            let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
//            alertController.addAction(actionOK)
//            self.present(alertController, animated: true, completion: nil)
//        }
//        if passwordValueTF.text != nil, passwordValueTF.text?.count != 0 {
//            print("enjoy pass")
//        } else {
//            let alertController = UIAlertController(
//                title: "",
//                message: "Enter your password",
//                preferredStyle:.alert)
//            let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
//            alertController.addAction(actionOK)
//            self.present(alertController, animated: true, completion: nil)
//
        
        
//            if passwordValueTF.text != nil, passwordValueTF.text?.count != 0 {
//                _ = UIAlertController(
//                    title: "",
//                    message: "Enter your password",
//                    preferredStyle:.alert)
    
        
//        for (userName, password) in namePasswordArray {
//           if userNameValueTF != nill
//
//            if userNameValueTF.text ?? "" == userName ?? "" {
//                print("User Name is true")
                
//                self.navigationController!.pushViewController(self.storyboard?.instantiateViewC‌​ontrollerWithIdentifier("welcomeViewController") as! UIViewController, animated: true)

  
