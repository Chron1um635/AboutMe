//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Максим Назаров on 01.09.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var fullNamePerson: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(username ?? "")!"
        fullNamePerson.text = "Привет меня зовут Максим"
        
        welcomeLabel.textColor = .white
        fullNamePerson.textColor = .white
        
        view.applyGradient()
    }
    
}


extension UIView {
    func applyGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor(
            red: 0.69,
            green: 0.31,
            blue: 0.78,
            alpha: 1
        ).cgColor, UIColor(
            red: 0.3,
            green: 0.45,
            blue: 0.98,
            alpha: 1
        ).cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
