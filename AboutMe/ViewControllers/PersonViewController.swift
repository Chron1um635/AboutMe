//
//  PersonViewController.swift
//  AboutMe
//
//  Created by Максим Назаров on 04.09.2024.
//

import UIKit

final class PersonViewController: UIViewController {
    
    
    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var post: UILabel!
    @IBOutlet var job: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    
    var person: Person!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let descriptionVC = segue.destination as? DescriptionViewController
        descriptionVC?.personDescription = person.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageLabel.text = "Возраст: \(person.age)"
        hobbyLabel.text = "Хобби: \(person.hobby)"
        cityLabel.text = "Город: \(person.city)"
        job.text = "Работа: \(person.job)"
        post.text = "Должность \(person.post)"
        navigationItem.title = person.fullName
        
        ageLabel.textColor = .white
        hobbyLabel.textColor = .white
        cityLabel.textColor  = .white
        job.textColor = .white
        post.textColor = .white
        
        view.applyGradient()
        
        avatarImageView.makeRounded()
    }

}

extension UIImageView {
    
    func makeRounded() {
        layer.borderWidth = 1
        layer.masksToBounds = false
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = self.frame.height / 2
        clipsToBounds = true
    }
}
