//
//  DescriptionViewController.swift
//  AboutMe
//
//  Created by Максим Назаров on 04.09.2024.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    @IBOutlet var descriptionLabel: UILabel!
    
    var personDescription: String!
    private let firstColor = UIColor(
        red: 0.69,
        green: 0.31,
        blue: 0.78,
        alpha: 1
    )
    private let secondColor = UIColor(
        red: 0.3,
        green: 0.45,
        blue: 0.98,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()

        descriptionLabel.text = personDescription
        
        descriptionLabel.textColor = .white
        
        view.applyGradient(firstColor: firstColor, secondColor: secondColor)
    }
    

}
