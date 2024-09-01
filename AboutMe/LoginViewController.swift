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
    
    let correctLogin = "user"
    let correctPassword = "111"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.layer.cornerRadius = 5
        passwordTextField.layer.cornerRadius = 5
        loginButton.layer.cornerRadius = 5
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.username = loginTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard loginTextField.text == correctLogin,
              passwordTextField.text == correctPassword else {
            showAlert(
                with: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        
        return true
    }
    
    @IBAction func askLoginButtonAction(_ sender: Any) {
        showAlert(with: "Oops", andMessage: "Correct login is: \(correctLogin)")
    }
    
    @IBAction func askPasswordButtonAction(_ sender: Any) {
        showAlert(with: "Oops", andMessage: "Correct password is: \(correctPassword)")
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
            style: .default,
            handler: {
            _ in
            self.loginTextField.text = ""
            self.passwordTextField.text = ""
        })
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    
    
    
}

