//
//  Profile.swift
//  AboutMe
//
//  Created by Максим Назаров on 04.09.2024.
//

struct User {
    let login: String
    let password: String
    let person: Person
    static func getUser() -> User {
        User(login: "user", password: "111", person: Person.getPerson())
    }
}

struct Person {
    let fullName: String
    let age: String
    let city: String
    let hobby: String
    let job: String
    let post: String
    let description: String
    
    static func getPerson() -> Person {
        Person(
            fullName: "Назаров Максим",
            age: "26",
            city: "Москва",
            hobby: "Музыка",
            job: "АО РПК",
            post: "Инженер-конструктор",
            description: """
            Меня зовут Максим, я родился в Сызрани, сейчас проживаю в Москве.
            Сейчас работаю инженером конструктором в частной компании.
            Я только начал проходить курс на swiftbook.org и он мне нравится.
            Думаю я смогу стать достойным IOS-разработчиком.
            """
        )
    }
}
