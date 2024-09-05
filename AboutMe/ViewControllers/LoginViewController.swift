//
//  ViewController.swift
//  AboutMe
//
//  Created by Максим Назаров on 01.09.2024.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    private let user = User.getUser()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.layer.cornerRadius = 5
        passwordTextField.layer.cornerRadius = 5
        loginButton.layer.cornerRadius = 5
        
        loginTextField.text = user.login
        passwordTextField.text = user.password
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeTBVC = segue.destination as? UITabBarController
        welcomeTBVC?.viewControllers?.forEach{ viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.username = user.login
            }
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard loginTextField.text == user.login,
              passwordTextField.text == user.password else {
            showAlert(
                with: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        
        return true
    }
    
    @IBAction func askLoginButtonAction() {
        showAlert(with: "Oops", andMessage: "Correct login is: \(user.login)")
    }
    
    @IBAction func askPasswordButtonAction() {
        showAlert(with: "Oops", andMessage: "Correct password is: \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(with title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default) {_ in
                self.passwordTextField.text = ""
            }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    
    
    
}

