//
//  DescriptionViewController.swift
//  AboutMe
//
//  Created by Максим Назаров on 04.09.2024.
//

import UIKit

final class DescriptionViewController: UIViewController {
    
    @IBOutlet var descriptionLabel: UILabel!
    
    var personDescription: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        descriptionLabel.text = personDescription
        
        descriptionLabel.textColor = .white
        
        view.applyGradient()
    }
    

}
