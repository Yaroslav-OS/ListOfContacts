//
//  Person.swift
//  ListOfContacts
//
//  Created by Yaroslav on 24.12.2020.
//  Copyright © 2020 Yaroslav. All rights reserved.
//


struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }

    static func getContactList() -> [Person] {
        
        var list: [Person] = []
                
        let shuffledNames = DataManager.shared.names.shuffled()
        let shuffledSurnames = DataManager.shared.surnames.shuffled()
        let shuffledEmails = DataManager.shared.emails.shuffled()
        let shuffledPhoneNumbers = DataManager.shared.phoneNumbers.shuffled()

        for number in 0...shuffledNames.count - 1 {
            list.append(Person(name: shuffledNames[number],
                               surname: shuffledSurnames[number],
                               email: shuffledEmails[number],
                               phoneNumber: shuffledPhoneNumbers[number]))
        }

        return list
        
    }
}

